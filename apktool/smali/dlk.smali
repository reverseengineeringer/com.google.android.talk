.class final Ldlk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqg;


# instance fields
.field final synthetic a:Ldlj;


# direct methods
.method constructor <init>(Ldlj;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Ldlk;->a:Ldlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y_()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Ldlk;->a:Ldlj;

    .line 1019
    iget-object v0, v0, Ldlj;->c:Lhpz;

    .line 34
    iget-object v1, p0, Ldlk;->a:Ldlj;

    .line 2019
    iget v1, v1, Ldlj;->b:I

    .line 34
    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Ldlk;->a:Ldlj;

    .line 3019
    invoke-virtual {v0}, Ldlj;->f()V

    .line 37
    :cond_0
    return-void
.end method
