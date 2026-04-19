/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../auth/email_idp_endpoint.dart' as _i2;
import '../auth/jwt_refresh_endpoint.dart' as _i3;
import '../endpoints/auth_endpoint.dart' as _i4;
import '../endpoints/gadget_endpoint.dart' as _i5;
import '../endpoints/participant_endpoint.dart' as _i6;
import '../endpoints/prise_contact_endpoint.dart' as _i7;
import '../endpoints/rdv_endpoint.dart' as _i8;
import '../endpoints/seance_endpoint.dart' as _i9;
import '../greetings/greeting_endpoint.dart' as _i10;
import 'package:dlf_backend_server/src/generated/utilisateur.dart' as _i11;
import 'package:dlf_backend_server/src/generated/gadget.dart' as _i12;
import 'package:dlf_backend_server/src/generated/participant.dart' as _i13;
import 'package:dlf_backend_server/src/generated/prise_contact.dart' as _i14;
import 'package:dlf_backend_server/src/generated/rdv.dart' as _i15;
import 'package:dlf_backend_server/src/generated/seance.dart' as _i16;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i17;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i18;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'emailIdp': _i2.EmailIdpEndpoint()
        ..initialize(
          server,
          'emailIdp',
          null,
        ),
      'jwtRefresh': _i3.JwtRefreshEndpoint()
        ..initialize(
          server,
          'jwtRefresh',
          null,
        ),
      'auth': _i4.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'gadget': _i5.GadgetEndpoint()
        ..initialize(
          server,
          'gadget',
          null,
        ),
      'participant': _i6.ParticipantEndpoint()
        ..initialize(
          server,
          'participant',
          null,
        ),
      'priseContact': _i7.PriseContactEndpoint()
        ..initialize(
          server,
          'priseContact',
          null,
        ),
      'rdv': _i8.RdvEndpoint()
        ..initialize(
          server,
          'rdv',
          null,
        ),
      'seance': _i9.SeanceEndpoint()
        ..initialize(
          server,
          'seance',
          null,
        ),
      'greeting': _i10.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['emailIdp'] = _i1.EndpointConnector(
      name: 'emailIdp',
      endpoint: endpoints['emailIdp']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint).login(
                session,
                email: params['email'],
                password: params['password'],
              ),
        ),
        'startRegistration': _i1.MethodConnector(
          name: 'startRegistration',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startRegistration(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyRegistrationCode': _i1.MethodConnector(
          name: 'verifyRegistrationCode',
          params: {
            'accountRequestId': _i1.ParameterDescription(
              name: 'accountRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyRegistrationCode(
                    session,
                    accountRequestId: params['accountRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishRegistration': _i1.MethodConnector(
          name: 'finishRegistration',
          params: {
            'registrationToken': _i1.ParameterDescription(
              name: 'registrationToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishRegistration(
                    session,
                    registrationToken: params['registrationToken'],
                    password: params['password'],
                  ),
        ),
        'startPasswordReset': _i1.MethodConnector(
          name: 'startPasswordReset',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startPasswordReset(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyPasswordResetCode': _i1.MethodConnector(
          name: 'verifyPasswordResetCode',
          params: {
            'passwordResetRequestId': _i1.ParameterDescription(
              name: 'passwordResetRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyPasswordResetCode(
                    session,
                    passwordResetRequestId: params['passwordResetRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishPasswordReset': _i1.MethodConnector(
          name: 'finishPasswordReset',
          params: {
            'finishPasswordResetToken': _i1.ParameterDescription(
              name: 'finishPasswordResetToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishPasswordReset(
                    session,
                    finishPasswordResetToken:
                        params['finishPasswordResetToken'],
                    newPassword: params['newPassword'],
                  ),
        ),
        'hasAccount': _i1.MethodConnector(
          name: 'hasAccount',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .hasAccount(session),
        ),
      },
    );
    connectors['jwtRefresh'] = _i1.EndpointConnector(
      name: 'jwtRefresh',
      endpoint: endpoints['jwtRefresh']!,
      methodConnectors: {
        'refreshAccessToken': _i1.MethodConnector(
          name: 'refreshAccessToken',
          params: {
            'refreshToken': _i1.ParameterDescription(
              name: 'refreshToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['jwtRefresh'] as _i3.JwtRefreshEndpoint)
                  .refreshAccessToken(
                    session,
                    refreshToken: params['refreshToken'],
                  ),
        ),
      },
    );
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i4.AuthEndpoint).login(
                session,
                params['email'],
                params['password'],
              ),
        ),
        'updateUser': _i1.MethodConnector(
          name: 'updateUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i11.Utilisateur>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i4.AuthEndpoint).updateUser(
                session,
                params['user'],
              ),
        ),
      },
    );
    connectors['gadget'] = _i1.EndpointConnector(
      name: 'gadget',
      endpoint: endpoints['gadget']!,
      methodConnectors: {
        'getAllGadgets': _i1.MethodConnector(
          name: 'getAllGadgets',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['gadget'] as _i5.GadgetEndpoint)
                  .getAllGadgets(session),
        ),
        'updateGadget': _i1.MethodConnector(
          name: 'updateGadget',
          params: {
            'gadget': _i1.ParameterDescription(
              name: 'gadget',
              type: _i1.getType<_i12.Gadget>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['gadget'] as _i5.GadgetEndpoint).updateGadget(
                    session,
                    params['gadget'],
                  ),
        ),
      },
    );
    connectors['participant'] = _i1.EndpointConnector(
      name: 'participant',
      endpoint: endpoints['participant']!,
      methodConnectors: {
        'addParticipant': _i1.MethodConnector(
          name: 'addParticipant',
          params: {
            'participant': _i1.ParameterDescription(
              name: 'participant',
              type: _i1.getType<_i13.Participant>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i6.ParticipantEndpoint)
                  .addParticipant(
                    session,
                    params['participant'],
                  ),
        ),
        'getParticipantsBySeance': _i1.MethodConnector(
          name: 'getParticipantsBySeance',
          params: {
            'seanceId': _i1.ParameterDescription(
              name: 'seanceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i6.ParticipantEndpoint)
                  .getParticipantsBySeance(
                    session,
                    params['seanceId'],
                  ),
        ),
        'getAllParticipants': _i1.MethodConnector(
          name: 'getAllParticipants',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i6.ParticipantEndpoint)
                  .getAllParticipants(session),
        ),
        'deleteParticipant': _i1.MethodConnector(
          name: 'deleteParticipant',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i6.ParticipantEndpoint)
                  .deleteParticipant(
                    session,
                    params['id'],
                  ),
        ),
        'updateParticipant': _i1.MethodConnector(
          name: 'updateParticipant',
          params: {
            'participant': _i1.ParameterDescription(
              name: 'participant',
              type: _i1.getType<_i13.Participant>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i6.ParticipantEndpoint)
                  .updateParticipant(
                    session,
                    params['participant'],
                  ),
        ),
      },
    );
    connectors['priseContact'] = _i1.EndpointConnector(
      name: 'priseContact',
      endpoint: endpoints['priseContact']!,
      methodConnectors: {
        'addPriseContact': _i1.MethodConnector(
          name: 'addPriseContact',
          params: {
            'priseContact': _i1.ParameterDescription(
              name: 'priseContact',
              type: _i1.getType<_i14.PriseContact>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i7.PriseContactEndpoint)
                  .addPriseContact(
                    session,
                    params['priseContact'],
                  ),
        ),
        'getAllPriseContacts': _i1.MethodConnector(
          name: 'getAllPriseContacts',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i7.PriseContactEndpoint)
                  .getAllPriseContacts(session),
        ),
        'updatePriseContact': _i1.MethodConnector(
          name: 'updatePriseContact',
          params: {
            'priseContact': _i1.ParameterDescription(
              name: 'priseContact',
              type: _i1.getType<_i14.PriseContact>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i7.PriseContactEndpoint)
                  .updatePriseContact(
                    session,
                    params['priseContact'],
                  ),
        ),
        'deletePriseContact': _i1.MethodConnector(
          name: 'deletePriseContact',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i7.PriseContactEndpoint)
                  .deletePriseContact(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['rdv'] = _i1.EndpointConnector(
      name: 'rdv',
      endpoint: endpoints['rdv']!,
      methodConnectors: {
        'addRdv': _i1.MethodConnector(
          name: 'addRdv',
          params: {
            'rdv': _i1.ParameterDescription(
              name: 'rdv',
              type: _i1.getType<_i15.RendezVous>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['rdv'] as _i8.RdvEndpoint).addRdv(
                session,
                params['rdv'],
              ),
        ),
        'getAllRdvs': _i1.MethodConnector(
          name: 'getAllRdvs',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['rdv'] as _i8.RdvEndpoint).getAllRdvs(session),
        ),
        'updateRdv': _i1.MethodConnector(
          name: 'updateRdv',
          params: {
            'rdv': _i1.ParameterDescription(
              name: 'rdv',
              type: _i1.getType<_i15.RendezVous>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['rdv'] as _i8.RdvEndpoint).updateRdv(
                session,
                params['rdv'],
              ),
        ),
        'deleteRdv': _i1.MethodConnector(
          name: 'deleteRdv',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['rdv'] as _i8.RdvEndpoint).deleteRdv(
                session,
                params['id'],
              ),
        ),
      },
    );
    connectors['seance'] = _i1.EndpointConnector(
      name: 'seance',
      endpoint: endpoints['seance']!,
      methodConnectors: {
        'getAllSeances': _i1.MethodConnector(
          name: 'getAllSeances',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['seance'] as _i9.SeanceEndpoint)
                  .getAllSeances(session),
        ),
        'updateSeance': _i1.MethodConnector(
          name: 'updateSeance',
          params: {
            'seance': _i1.ParameterDescription(
              name: 'seance',
              type: _i1.getType<_i16.Seance>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['seance'] as _i9.SeanceEndpoint).updateSeance(
                    session,
                    params['seance'],
                  ),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i10.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i17.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i18.Endpoints()
      ..initializeEndpoints(server);
  }
}
