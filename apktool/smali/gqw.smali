.class public final Lgqw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgqr;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgqr;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgqr;",
            "Lgqd;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgqr;",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lgqd;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lgqz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lgqw;->a:Lfib;

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lgqw;->b:Lfib;

    new-instance v0, Lgqx;

    invoke-direct {v0}, Lgqx;-><init>()V

    sput-object v0, Lgqw;->c:Lfhx;

    new-instance v0, Lgqy;

    invoke-direct {v0}, Lgqy;-><init>()V

    sput-object v0, Lgqw;->d:Lfhx;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgqw;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgqw;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lfhw;

    const-string v1, "SignIn.API"

    sget-object v2, Lgqw;->c:Lfhx;

    sget-object v3, Lgqw;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lgqw;->g:Lfhw;

    new-instance v0, Lfhw;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Lgqw;->d:Lfhx;

    sget-object v3, Lgqw;->b:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lgqw;->h:Lfhw;

    new-instance v0, Lgqz;

    invoke-direct {v0}, Lgqz;-><init>()V

    sput-object v0, Lgqw;->i:Lgqz;

    return-void
.end method
