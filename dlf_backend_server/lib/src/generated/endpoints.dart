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
import '../endpoints/image_endpoint.dart' as _i6;
import '../endpoints/notification_endpoint.dart' as _i7;
import '../endpoints/participant_endpoint.dart' as _i8;
import '../endpoints/prise_contact_endpoint.dart' as _i9;
import '../endpoints/rdv_endpoint.dart' as _i10;
import '../endpoints/seance_endpoint.dart' as _i11;
import '../greetings/greeting_endpoint.dart' as _i12;
import 'package:dlf_backend_server/src/generated/utilisateur.dart' as _i13;
import 'package:dlf_backend_server/src/generated/gadget.dart' as _i14;
import 'package:dlf_backend_server/src/generated/image.dart' as _i15;
import 'package:dlf_backend_server/src/generated/participant.dart' as _i16;
import 'package:dlf_backend_server/src/generated/prise_contact.dart' as _i17;
import 'package:dlf_backend_server/src/generated/rdv.dart' as _i18;
import 'package:dlf_backend_server/src/generated/seance.dart' as _i19;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i20;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i21;

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
      'image': _i6.ImageEndpoint()
        ..initialize(
          server,
          'image',
          null,
        ),
      'notification': _i7.NotificationEndpoint()
        ..initialize(
          server,
          'notification',
          null,
        ),
      'participant': _i8.ParticipantEndpoint()
        ..initialize(
          server,
          'participant',
          null,
        ),
      'priseContact': _i9.PriseContactEndpoint()
        ..initialize(
          server,
          'priseContact',
          null,
        ),
      'rdv': _i10.RdvEndpoint()
        ..initialize(
          server,
          'rdv',
          null,
        ),
      'seance': _i11.SeanceEndpoint()
        ..initialize(
          server,
          'seance',
          null,
        ),
      'greeting': _i12.GreetingEndpoint()
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
              type: _i1.getType<_i13.Utilisateur>(),
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
              type: _i1.getType<_i14.Gadget>(),
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
    connectors['image'] = _i1.EndpointConnector(
      name: 'image',
      endpoint: endpoints['image']!,
      methodConnectors: {
        'addImage': _i1.MethodConnector(
          name: 'addImage',
          params: {
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<_i15.Image>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['image'] as _i6.ImageEndpoint).addImage(
                session,
                params['image'],
              ),
        ),
        'getImagesBySeance': _i1.MethodConnector(
          name: 'getImagesBySeance',
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
              ) async =>
                  (endpoints['image'] as _i6.ImageEndpoint).getImagesBySeance(
                    session,
                    params['seanceId'],
                  ),
        ),
        'deleteImage': _i1.MethodConnector(
          name: 'deleteImage',
          params: {
            'imageId': _i1.ParameterDescription(
              name: 'imageId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['image'] as _i6.ImageEndpoint).deleteImage(
                session,
                params['imageId'],
              ),
        ),
      },
    );
    connectors['notification'] = _i1.EndpointConnector(
      name: 'notification',
      endpoint: endpoints['notification']!,
      methodConnectors: {
        'getMobileNotifications': _i1.MethodConnector(
          name: 'getMobileNotifications',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i7.NotificationEndpoint)
                  .getMobileNotifications(session),
        ),
        'getUnreadMobileNotifications': _i1.MethodConnector(
          name: 'getUnreadMobileNotifications',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i7.NotificationEndpoint)
                  .getUnreadMobileNotifications(session),
        ),
        'markAsRead': _i1.MethodConnector(
          name: 'markAsRead',
          params: {
            'notificationId': _i1.ParameterDescription(
              name: 'notificationId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i7.NotificationEndpoint)
                  .markAsRead(
                    session,
                    params['notificationId'],
                  ),
        ),
        'markAllMobileAsRead': _i1.MethodConnector(
          name: 'markAllMobileAsRead',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i7.NotificationEndpoint)
                  .markAllMobileAsRead(session),
        ),
        'createFromMobile': _i1.MethodConnector(
          name: 'createFromMobile',
          params: {
            'titre': _i1.ParameterDescription(
              name: 'titre',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'corps': _i1.ParameterDescription(
              name: 'corps',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'entityId': _i1.ParameterDescription(
              name: 'entityId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i7.NotificationEndpoint)
                  .createFromMobile(
                    session,
                    titre: params['titre'],
                    corps: params['corps'],
                    type: params['type'],
                    entityId: params['entityId'],
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
              type: _i1.getType<_i16.Participant>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i8.ParticipantEndpoint)
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
              ) async => (endpoints['participant'] as _i8.ParticipantEndpoint)
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
              ) async => (endpoints['participant'] as _i8.ParticipantEndpoint)
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
              ) async => (endpoints['participant'] as _i8.ParticipantEndpoint)
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
              type: _i1.getType<_i16.Participant>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['participant'] as _i8.ParticipantEndpoint)
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
              type: _i1.getType<_i17.PriseContact>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i9.PriseContactEndpoint)
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
              ) async => (endpoints['priseContact'] as _i9.PriseContactEndpoint)
                  .getAllPriseContacts(session),
        ),
        'updatePriseContact': _i1.MethodConnector(
          name: 'updatePriseContact',
          params: {
            'priseContact': _i1.ParameterDescription(
              name: 'priseContact',
              type: _i1.getType<_i17.PriseContact>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['priseContact'] as _i9.PriseContactEndpoint)
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
              ) async => (endpoints['priseContact'] as _i9.PriseContactEndpoint)
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
              type: _i1.getType<_i18.RendezVous>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['rdv'] as _i10.RdvEndpoint).addRdv(
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
                  (endpoints['rdv'] as _i10.RdvEndpoint).getAllRdvs(session),
        ),
        'updateRdv': _i1.MethodConnector(
          name: 'updateRdv',
          params: {
            'rdv': _i1.ParameterDescription(
              name: 'rdv',
              type: _i1.getType<_i18.RendezVous>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['rdv'] as _i10.RdvEndpoint).updateRdv(
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
              ) async => (endpoints['rdv'] as _i10.RdvEndpoint).deleteRdv(
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
              ) async => (endpoints['seance'] as _i11.SeanceEndpoint)
                  .getAllSeances(session),
        ),
        'updateSeance': _i1.MethodConnector(
          name: 'updateSeance',
          params: {
            'seance': _i1.ParameterDescription(
              name: 'seance',
              type: _i1.getType<_i19.Seance>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['seance'] as _i11.SeanceEndpoint).updateSeance(
                    session,
                    params['seance'],
                  ),
        ),
        'cloreSeance': _i1.MethodConnector(
          name: 'cloreSeance',
          params: {
            'seanceId': _i1.ParameterDescription(
              name: 'seanceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'nbParticipantsEstime': _i1.ParameterDescription(
              name: 'nbParticipantsEstime',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['seance'] as _i11.SeanceEndpoint).cloreSeance(
                    session,
                    params['seanceId'],
                    params['nbParticipantsEstime'],
                  ),
        ),
        'getUploadUrl': _i1.MethodConnector(
          name: 'getUploadUrl',
          params: {
            'fileName': _i1.ParameterDescription(
              name: 'fileName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['seance'] as _i11.SeanceEndpoint).getUploadUrl(
                    session,
                    params['fileName'],
                  ),
        ),
        'updateNbParticipants': _i1.MethodConnector(
          name: 'updateNbParticipants',
          params: {
            'seanceId': _i1.ParameterDescription(
              name: 'seanceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'nbParticipantsEstime': _i1.ParameterDescription(
              name: 'nbParticipantsEstime',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['seance'] as _i11.SeanceEndpoint)
                  .updateNbParticipants(
                    session,
                    params['seanceId'],
                    params['nbParticipantsEstime'],
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
              ) async => (endpoints['greeting'] as _i12.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i20.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i21.Endpoints()
      ..initializeEndpoints(server);
  }
}
