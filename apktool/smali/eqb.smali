.class public Leqb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljsj;

.field public b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public final synthetic e:Ldda;


# direct methods
.method public constructor <init>(Ldda;Ljsj;)V
    .locals 1

    .prologue
    .line 3047
    iput-object p1, p0, Leqb;->e:Ldda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3048
    if-nez p2, :cond_0

    .line 3049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3051
    :cond_0
    iput-object p2, p0, Leqb;->a:Ljsj;

    .line 3052
    invoke-virtual {p0}, Leqb;->b()V

    .line 3053
    return-void
.end method


# virtual methods
.method public a()Lepv;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Leqb;->d:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepv;

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 3058
    iget-object v0, p0, Leqb;->a:Ljsj;

    .line 4026
    new-instance v1, Ljsk;

    invoke-direct {v1, v0}, Ljsk;-><init>(Ljsj;)V

    .line 3059
    invoke-static {v1}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Leqb;->b:Lkog;

    .line 3061
    iget-object v0, p0, Leqb;->b:Lkog;

    .line 4031
    new-instance v1, Leqc;

    invoke-direct {v1, v0}, Leqc;-><init>(Lkog;)V

    .line 3062
    iput-object v1, p0, Leqb;->c:Lkog;

    .line 3065
    iget-object v0, p0, Leqb;->e:Ldda;

    iget-object v0, v0, Ldda;->b:Lept;

    iget-object v0, v0, Lept;->p:Ldjj;

    .line 4149
    iget-object v0, v0, Ldjj;->a:Lkog;

    .line 3067
    iget-object v1, p0, Leqb;->e:Ldda;

    .line 5006
    iget-object v1, v1, Ldda;->a:Lkog;

    .line 3068
    iget-object v2, p0, Leqb;->c:Lkog;

    iget-object v3, p0, Leqb;->e:Ldda;

    iget-object v3, v3, Ldda;->b:Lept;

    iget-object v3, v3, Lept;->p:Ldjj;

    .line 5149
    iget-object v3, v3, Ldjj;->K:Lkog;

    .line 6050
    new-instance v4, Leqa;

    invoke-direct {v4, v0, v1, v2, v3}, Leqa;-><init>(Lkog;Lkog;Lkog;Lkog;)V

    .line 3066
    iput-object v4, p0, Leqb;->d:Lkog;

    .line 3071
    return-void
.end method
