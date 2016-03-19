.class public Lgyq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lgyf;

.field public b:Lgxk;


# direct methods
.method public constructor <init>(Lgxk;Lgyf;)V
    .locals 0

    .prologue
    .line 3028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3029
    iput-object p1, p0, Lgyq;->b:Lgxk;

    .line 3030
    iput-object p2, p0, Lgyq;->a:Lgyf;

    .line 3031
    return-void
.end method

.method public constructor <init>(Lgxk;Lgyf;B)V
    .locals 0

    .prologue
    .line 3032
    invoke-direct {p0, p1, p2}, Lgyq;-><init>(Lgxk;Lgyf;)V

    .line 3033
    return-void
.end method


# virtual methods
.method public a(Lgyt;)Lgxp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyt;",
            ")",
            "Lgxp",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Lgyq;->a:Lgyf;

    iget-object v1, p0, Lgyq;->a:Lgyf;

    iget-object v2, p0, Lgyq;->b:Lgxk;

    invoke-virtual {v1, v2}, Lgyf;->a(Lgxk;)Lfic;

    move-result-object v1

    .line 1055
    check-cast p1, Lgyt;

    invoke-virtual {p1}, Lgyt;->b()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v2

    .line 1038
    invoke-static {v1, v2}, Lfyc;->b(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)Lfij;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyf;->a(Lfij;)Lgxp;

    move-result-object v0

    return-object v0
.end method

.method public b(Lgyt;)Lgxp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyt;",
            ")",
            "Lgxp",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2045
    iget-object v0, p0, Lgyq;->a:Lgyf;

    iget-object v1, p0, Lgyq;->a:Lgyf;

    iget-object v2, p0, Lgyq;->b:Lgxk;

    invoke-virtual {v1, v2}, Lgyf;->a(Lgxk;)Lfic;

    move-result-object v1

    .line 2055
    check-cast p1, Lgyt;

    invoke-virtual {p1}, Lgyt;->b()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v2

    .line 2045
    invoke-static {v1, v2}, Lfyc;->a(Lfic;Lcom/google/android/gms/feedback/FeedbackOptions;)Lfij;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyf;->a(Lfij;)Lgxp;

    move-result-object v0

    return-object v0
.end method
