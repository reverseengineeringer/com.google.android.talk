.class public final enum Lfgn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfgn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lfgn;

.field public static final enum B:Lfgn;

.field public static final enum C:Lfgn;

.field public static final enum D:Lfgn;

.field public static final enum E:Lfgn;

.field public static final enum F:Lfgn;

.field public static final enum G:Lfgn;

.field public static final enum H:Lfgn;

.field public static final enum I:Lfgn;

.field public static final enum J:Lfgn;

.field public static final enum K:Lfgn;

.field public static final enum L:Lfgn;

.field public static final enum M:Lfgn;

.field public static final enum N:Lfgn;

.field public static final enum O:Lfgn;

.field public static final enum P:Lfgn;

.field public static final enum Q:Lfgn;

.field public static final enum R:Lfgn;

.field public static final enum S:Lfgn;

.field public static final enum T:Lfgn;

.field public static final enum U:Lfgn;

.field public static final enum V:Lfgn;

.field private static final synthetic X:[Lfgn;

.field public static final enum a:Lfgn;

.field public static final enum b:Lfgn;

.field public static final enum c:Lfgn;

.field public static final enum d:Lfgn;

.field public static final enum e:Lfgn;

.field public static final enum f:Lfgn;

.field public static final enum g:Lfgn;

.field public static final enum h:Lfgn;

.field public static final enum i:Lfgn;

.field public static final enum j:Lfgn;

.field public static final enum k:Lfgn;

.field public static final enum l:Lfgn;

.field public static final enum m:Lfgn;

.field public static final enum n:Lfgn;

.field public static final enum o:Lfgn;

.field public static final enum p:Lfgn;

.field public static final enum q:Lfgn;

.field public static final enum r:Lfgn;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum s:Lfgn;

.field public static final enum t:Lfgn;

.field public static final enum u:Lfgn;

.field public static final enum v:Lfgn;

.field public static final enum w:Lfgn;

.field public static final enum x:Lfgn;

.field public static final enum y:Lfgn;

.field public static final enum z:Lfgn;


# instance fields
.field private final W:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lfgn;

    const-string v1, "SUCCESS"

    const-string v2, "Ok"

    invoke-direct {v0, v1, v4, v2}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->a:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "BAD_AUTHENTICATION"

    const-string v2, "BadAuthentication"

    invoke-direct {v0, v1, v5, v2}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->b:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "EMPTY_CONSUMER_PKG_OR_SIG"

    const-string v2, "EmptyConsumerPackageOrSig"

    invoke-direct {v0, v1, v6, v2}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->c:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NEEDS_2F"

    const-string v2, "InvalidSecondFactor"

    invoke-direct {v0, v1, v7, v2}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->d:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NEEDS_POST_SIGN_IN_FLOW"

    const-string v2, "PostSignInFlowRequired"

    invoke-direct {v0, v1, v8, v2}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->e:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NOT_VERIFIED"

    const/4 v2, 0x5

    const-string v3, "NotVerified"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->f:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "TERMS_NOT_AGREED"

    const/4 v2, 0x6

    const-string v3, "TermsNotAgreed"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->g:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->h:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x8

    const-string v3, "UNKNOWN_ERR"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->i:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "ACCOUNT_DELETED"

    const/16 v2, 0x9

    const-string v3, "AccountDeleted"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->j:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "ACCOUNT_DISABLED"

    const/16 v2, 0xa

    const-string v3, "AccountDisabled"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->k:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "SERVICE_DISABLED"

    const/16 v2, 0xb

    const-string v3, "ServiceDisabled"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->l:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0xc

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->m:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "CAPTCHA"

    const/16 v2, 0xd

    const-string v3, "CaptchaRequired"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->n:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0xe

    const-string v3, "NetworkError"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->o:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "USER_CANCEL"

    const/16 v2, 0xf

    const-string v3, "UserCancel"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->p:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "PERMISSION_DENIED"

    const/16 v2, 0x10

    const-string v3, "PermissionDenied"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->q:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DEVICE_MANAGEMENT_REQUIRED"

    const/16 v2, 0x11

    const-string v3, "DeviceManagementRequiredOrSyncDisabled"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->r:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED"

    const/16 v2, 0x12

    const-string v3, "ThirdPartyDeviceManagementRequired"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->s:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_INTERNAL_ERROR"

    const/16 v2, 0x13

    const-string v3, "DeviceManagementInternalError"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->t:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_SYNC_DISABLED"

    const/16 v2, 0x14

    const-string v3, "DeviceManagementSyncDisabled"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->u:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_ADMIN_BLOCKED"

    const/16 v2, 0x15

    const-string v3, "DeviceManagementAdminBlocked"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->v:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_ADMIN_PENDING_APPROVAL"

    const/16 v2, 0x16

    const-string v3, "DeviceManagementAdminPendingApproval"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->w:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_STALE_SYNC_REQUIRED"

    const/16 v2, 0x17

    const-string v3, "DeviceManagementStaleSyncRequired"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->x:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_DEACTIVATED"

    const/16 v2, 0x18

    const-string v3, "DeviceManagementDeactivated"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->y:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DM_REQUIRED"

    const/16 v2, 0x19

    const-string v3, "DeviceManagementRequired"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->z:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "CLIENT_LOGIN_DISABLED"

    const/16 v2, 0x1a

    const-string v3, "ClientLoginDisabled"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->A:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NEED_PERMISSION"

    const/16 v2, 0x1b

    const-string v3, "NeedPermission"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->B:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "BAD_PASSWORD"

    const/16 v2, 0x1c

    const-string v3, "WeakPassword"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->C:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "ALREADY_HAS_GMAIL"

    const/16 v2, 0x1d

    const-string v3, "ALREADY_HAS_GMAIL"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->D:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x1e

    const-string v3, "BadRequest"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->E:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "BAD_USERNAME"

    const/16 v2, 0x1f

    const-string v3, "BadUsername"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->F:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "LOGIN_FAIL"

    const/16 v2, 0x20

    const-string v3, "LoginFail"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->G:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v2, 0x21

    const-string v3, "NotLoggedIn"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->H:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NO_GMAIL"

    const/16 v2, 0x22

    const-string v3, "NoGmail"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->I:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "REQUEST_DENIED"

    const/16 v2, 0x23

    const-string v3, "RequestDenied"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->J:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x24

    const-string v3, "ServerError"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->K:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "USERNAME_UNAVAILABLE"

    const/16 v2, 0x25

    const-string v3, "UsernameUnavailable"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->L:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0x26

    const-string v3, "DeletedGmail"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->M:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "SOCKET_TIMEOUT"

    const/16 v2, 0x27

    const-string v3, "SocketTimeout"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->N:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "EXISTING_USERNAME"

    const/16 v2, 0x28

    const-string v3, "ExistingUsername"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->O:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "NEEDS_BROWSER"

    const/16 v2, 0x29

    const-string v3, "NeedsBrowser"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->P:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "GPLUS_OTHER"

    const/16 v2, 0x2a

    const-string v3, "GPlusOther"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->Q:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "GPLUS_NICKNAME"

    const/16 v2, 0x2b

    const-string v3, "GPlusNickname"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->R:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "GPLUS_INVALID_CHAR"

    const/16 v2, 0x2c

    const-string v3, "GPlusInvalidChar"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->S:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "GPLUS_INTERSTITIAL"

    const/16 v2, 0x2d

    const-string v3, "GPlusInterstitial"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->T:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "GPLUS_PROFILE_ERROR"

    const/16 v2, 0x2e

    const-string v3, "ProfileUpgradeError"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->U:Lfgn;

    new-instance v0, Lfgn;

    const-string v1, "INVALID_SCOPE"

    const/16 v2, 0x2f

    const-string v3, "INVALID_SCOPE"

    invoke-direct {v0, v1, v2, v3}, Lfgn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfgn;->V:Lfgn;

    const/16 v0, 0x30

    new-array v0, v0, [Lfgn;

    sget-object v1, Lfgn;->a:Lfgn;

    aput-object v1, v0, v4

    sget-object v1, Lfgn;->b:Lfgn;

    aput-object v1, v0, v5

    sget-object v1, Lfgn;->c:Lfgn;

    aput-object v1, v0, v6

    sget-object v1, Lfgn;->d:Lfgn;

    aput-object v1, v0, v7

    sget-object v1, Lfgn;->e:Lfgn;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lfgn;->f:Lfgn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfgn;->g:Lfgn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfgn;->h:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfgn;->i:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfgn;->j:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfgn;->k:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfgn;->l:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfgn;->m:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfgn;->n:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfgn;->o:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfgn;->p:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfgn;->q:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfgn;->r:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfgn;->s:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lfgn;->t:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lfgn;->u:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lfgn;->v:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lfgn;->w:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lfgn;->x:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lfgn;->y:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lfgn;->z:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lfgn;->A:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lfgn;->B:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lfgn;->C:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lfgn;->D:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lfgn;->E:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lfgn;->F:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lfgn;->G:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lfgn;->H:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lfgn;->I:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lfgn;->J:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lfgn;->K:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lfgn;->L:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lfgn;->M:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lfgn;->N:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lfgn;->O:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lfgn;->P:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lfgn;->Q:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lfgn;->R:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lfgn;->S:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lfgn;->T:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lfgn;->U:Lfgn;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lfgn;->V:Lfgn;

    aput-object v2, v0, v1

    sput-object v0, Lfgn;->X:[Lfgn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfgn;->W:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfgn;
    .locals 1

    const-class v0, Lfgn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfgn;

    return-object v0
.end method

.method public static values()[Lfgn;
    .locals 1

    sget-object v0, Lfgn;->X:[Lfgn;

    invoke-virtual {v0}, [Lfgn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfgn;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfgn;->W:Ljava/lang/String;

    return-object v0
.end method
