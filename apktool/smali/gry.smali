.class public final Lgry;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgrg;

.field public static final b:Lgrd;

.field public static final c:Lgrr;

.field public static final d:Lgrv;

.field public static final e:Lgre;

.field public static final f:Lgrc;

.field public static final g:Lgrb;

.field public static final h:Lgrf;

.field public static final i:Lgrx;

.field public static final j:Lgso;

.field public static final k:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgun;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lgsa;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgun;",
            "Lgsa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lgrg;

    invoke-direct {v0}, Lgrg;-><init>()V

    sput-object v0, Lgry;->a:Lgrg;

    new-instance v0, Lgrd;

    invoke-direct {v0}, Lgrd;-><init>()V

    sput-object v0, Lgry;->b:Lgrd;

    new-instance v0, Lgrr;

    invoke-direct {v0}, Lgrr;-><init>()V

    sput-object v0, Lgry;->c:Lgrr;

    new-instance v0, Lgrv;

    invoke-direct {v0}, Lgrv;-><init>()V

    sput-object v0, Lgry;->d:Lgrv;

    new-instance v0, Lgre;

    invoke-direct {v0}, Lgre;-><init>()V

    sput-object v0, Lgry;->e:Lgre;

    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    sput-object v0, Lgry;->f:Lgrc;

    new-instance v0, Lgrb;

    invoke-direct {v0}, Lgrb;-><init>()V

    sput-object v0, Lgry;->g:Lgrb;

    new-instance v0, Lgrf;

    invoke-direct {v0}, Lgrf;-><init>()V

    sput-object v0, Lgry;->h:Lgrf;

    new-instance v0, Lgrx;

    invoke-direct {v0}, Lgrx;-><init>()V

    sput-object v0, Lgry;->i:Lgrx;

    new-instance v0, Lgso;

    invoke-direct {v0}, Lgso;-><init>()V

    sput-object v0, Lgry;->j:Lgso;

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lgry;->k:Lfib;

    new-instance v0, Lgrz;

    invoke-direct {v0}, Lgrz;-><init>()V

    sput-object v0, Lgry;->m:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "Wearable.API"

    sget-object v2, Lgry;->m:Lfhx;

    sget-object v3, Lgry;->k:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lgry;->l:Lfhw;

    return-void
.end method
