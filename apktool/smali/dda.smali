.class public Ldda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsp;
.implements Ljsd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhsp;",
        "Ljsd",
        "<",
        "Leqb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field public final synthetic b:Lept;


# direct methods
.method public constructor <init>(Lept;)V
    .locals 2

    .prologue
    .line 2009
    iput-object p1, p0, Ldda;->b:Lept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    iget-object v0, p0, Ldda;->b:Lept;

    .line 2873
    iget-object v0, v0, Lept;->o:Lkog;

    .line 3028
    new-instance v1, Ljqw;

    invoke-direct {v1, v0}, Ljqw;-><init>(Lkog;)V

    .line 2017
    invoke-static {v1}, Lmhi;->a(Lkog;)Lkog;

    move-result-object v0

    iput-object v0, p0, Ldda;->a:Lkog;

    .line 2011
    return-void
.end method


# virtual methods
.method a(Ljsj;)Leqb;
    .locals 1

    .prologue
    .line 6034
    new-instance v0, Leqb;

    .line 6037
    invoke-direct {v0, p0, p1}, Leqb;-><init>(Ldda;Ljsj;)V

    .line 6034
    return-object v0
.end method

.method public a()Lhtd;
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Ldda;->b:Lept;

    .line 4873
    iget-object v0, v0, Lept;->l:Lkog;

    .line 4024
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtd;

    return-object v0
.end method

.method public b()Lhsj;
    .locals 1

    .prologue
    .line 5029
    iget-object v0, p0, Ldda;->b:Lept;

    .line 5873
    iget-object v0, v0, Lept;->m:Lkog;

    .line 5029
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsj;

    return-object v0
.end method

.method public synthetic b(Ljsj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7006
    invoke-virtual {p0, p1}, Ldda;->a(Ljsj;)Leqb;

    move-result-object v0

    return-object v0
.end method
