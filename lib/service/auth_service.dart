import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
  }) {
    return _supabaseClient.auth.signUp(email: email, password: password);
  }

  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  }) {
    return _supabaseClient.auth
        .signInWithPassword(email: email, password: password);
  }
}
