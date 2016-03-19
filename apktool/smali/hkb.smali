.class final Lhkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhjz;


# direct methods
.method constructor <init>(Lhjz;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lhkb;->a:Lhjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lhkb;->a:Lhjz;

    .line 1042
    iget-object v0, v0, Lhjz;->j:Lhki;

    .line 392
    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lhkb;->a:Lhjz;

    .line 2042
    iget-object v0, v0, Lhjz;->j:Lhki;

    .line 393
    iget-object v1, p0, Lhkb;->a:Lhjz;

    .line 3042
    iget-object v1, v1, Lhjz;->h:Lhke;

    .line 393
    iget-object v2, p0, Lhkb;->a:Lhjz;

    .line 4042
    iget-object v2, v2, Lhjz;->i:Ljava/util/Set;

    .line 393
    invoke-virtual {v0, v1, v2}, Lhki;->a(Lhke;Ljava/util/Set;)V

    .line 395
    :cond_0
    return-void
.end method
