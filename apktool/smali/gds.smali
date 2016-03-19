.class public final Lgds;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lgen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgen",
            "<",
            "Lgeb;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

.field private f:Leqn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgen;Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgen",
            "<",
            "Lgeb;",
            ">;",
            "Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgds;->a:Landroid/content/Context;

    iput-object p2, p0, Lgds;->b:Ljava/lang/String;

    iput-object p4, p0, Lgds;->c:Lgen;

    const/4 v0, 0x0

    iput-object v0, p0, Lgds;->f:Leqn;

    iput-object p3, p0, Lgds;->d:Ljava/lang/String;

    iput-object p5, p0, Lgds;->e:Lcom/google/android/gms/location/copresence/internal/CopresenceApiOptions;

    return-void
.end method
