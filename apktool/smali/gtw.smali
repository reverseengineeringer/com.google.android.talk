.class public final Lgtw;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:[B

.field final synthetic j:Lgrr;


# direct methods
.method public constructor <init>(Lgrr;Lfic;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iput-object p1, p0, Lgtw;->j:Lgrr;

    iput-object p3, p0, Lgtw;->a:Ljava/lang/String;

    iput-object p4, p0, Lgtw;->b:Ljava/lang/String;

    iput-object p5, p0, Lgtw;->i:[B

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;S)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lgrt;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lgrt;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lgun;

    .line 1000
    iget-object v0, p0, Lgtw;->a:Ljava/lang/String;

    iget-object v1, p0, Lgtw;->b:Ljava/lang/String;

    iget-object v2, p0, Lgtw;->i:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lgun;->a(Lfis;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 0
    return-void
.end method
