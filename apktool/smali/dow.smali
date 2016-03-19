.class public Ldow;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3886
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 3887
    iput-object p2, p0, Ldow;->a:Ljava/lang/String;

    .line 3888
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3910
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 3893
    new-instance v0, Ljze;

    invoke-direct {v0}, Ljze;-><init>()V

    .line 3894
    iget-object v1, p0, Ldow;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Ljze;->requestHeader:Lkdo;

    .line 3896
    iget-object v1, p0, Ldow;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Ljze;->a:Ljxw;

    .line 3897
    new-instance v1, Ljzc;

    invoke-direct {v1}, Ljzc;-><init>()V

    iput-object v1, v0, Ljze;->b:Ljzc;

    .line 3898
    iget-object v1, v0, Ljze;->b:Ljzc;

    iget-object v2, p0, Ldow;->a:Ljava/lang/String;

    iput-object v2, v1, Ljzc;->a:Ljava/lang/String;

    .line 3900
    return-object v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 3915
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3905
    const-string v0, "conversations/easteregg"

    return-object v0
.end method
