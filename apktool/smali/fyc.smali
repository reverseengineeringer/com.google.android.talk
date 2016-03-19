.class public final Lfyc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lgcm;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lgcm;",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lfyc;->a:Lfib;

    new-instance v0, Lfyd;

    invoke-direct {v0}, Lfyd;-><init>()V

    sput-object v0, Lfyc;->c:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "Feedback.API"

    sget-object v2, Lfyc;->c:Lfhx;

    sget-object v3, Lfyc;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lfyc;->b:Lfhw;

    return-void
.end method

.method public static a(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lcom/google/android/gms/feedback/FeedbackOptions;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lfye;

    invoke-direct {v0, p0, p1}, Lfye;-><init>(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)V

    invoke-interface {p0, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lcom/google/android/gms/feedback/FeedbackOptions;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lfyf;

    invoke-direct {v0, p0, p1}, Lfyf;-><init>(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)V

    invoke-interface {p0, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method
