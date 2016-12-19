package edu.informatika.semestrinis.helper;

import edu.informatika.semestrinis.entity.UserEntity;
import edu.informatika.semestrinis.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationHelper {

  private final UserRepository userRepository;

  @Autowired
  public AuthenticationHelper(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  public boolean hasRole(String role) {
    // get security context from thread local
    SecurityContext context = SecurityContextHolder.getContext();
    if (context == null)
      return false;

    Authentication authentication = context.getAuthentication();
    if (authentication == null)
      return false;

    for (GrantedAuthority auth : authentication.getAuthorities()) {
      if (role.equals(auth.getAuthority()))
        return true;
    }

    return false;
  }

  public int getCurrentUserId() {
    // get security context from thread local
    SecurityContext context = SecurityContextHolder.getContext();
    if (context == null)
      return 0;

    Authentication authentication = context.getAuthentication();
    if (authentication == null)
      return 0;

    return userRepository.getUserId(authentication.getName());
  }

  public UserEntity getCurrentUser() {
    // get security context from thread local
    SecurityContext context = SecurityContextHolder.getContext();
    if (context == null)
      return null;

    Authentication authentication = context.getAuthentication();
    if (authentication == null)
      return null;

    return userRepository.getUser(authentication.getName());
  }
}
