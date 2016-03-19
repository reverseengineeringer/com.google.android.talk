.class public final Lglu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgot;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgot;",
            "Lglw;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lglw;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Latn;

.field public static final e:Lglg;

.field public static final f:Lgln;

.field public static final g:Lglo;

.field public static final h:Lglz;

.field public static final i:Lgle;

.field public static final j:Lglq;

.field public static final k:Lglr;

.field public static final l:Lglf;

.field public static final m:Lgls;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lglu;->a:Lfib;

    new-instance v0, Lglv;

    invoke-direct {v0}, Lglv;-><init>()V

    sput-object v0, Lglu;->b:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "People.API_1P"

    sget-object v2, Lglu;->b:Lfhx;

    sget-object v3, Lglu;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lglu;->c:Lfhw;

    new-instance v0, Lgnk;

    invoke-direct {v0}, Lgnk;-><init>()V

    sput-object v0, Lglu;->d:Latn;

    new-instance v0, Lglg;

    invoke-direct {v0}, Lglg;-><init>()V

    sput-object v0, Lglu;->e:Lglg;

    new-instance v0, Lgln;

    invoke-direct {v0}, Lgln;-><init>()V

    sput-object v0, Lglu;->f:Lgln;

    new-instance v0, Lglo;

    invoke-direct {v0}, Lglo;-><init>()V

    sput-object v0, Lglu;->g:Lglo;

    new-instance v0, Lglz;

    invoke-direct {v0}, Lglz;-><init>()V

    sput-object v0, Lglu;->h:Lglz;

    new-instance v0, Lgle;

    invoke-direct {v0}, Lgle;-><init>()V

    sput-object v0, Lglu;->i:Lgle;

    new-instance v0, Lglq;

    invoke-direct {v0}, Lglq;-><init>()V

    sput-object v0, Lglu;->j:Lglq;

    new-instance v0, Lglr;

    invoke-direct {v0}, Lglr;-><init>()V

    sput-object v0, Lglu;->k:Lglr;

    new-instance v0, Lglf;

    invoke-direct {v0}, Lglf;-><init>()V

    sput-object v0, Lglu;->l:Lglf;

    new-instance v0, Lgls;

    invoke-direct {v0}, Lgls;-><init>()V

    sput-object v0, Lglu;->m:Lgls;

    return-void
.end method
