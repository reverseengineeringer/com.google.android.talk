.class final Lhuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhug;


# direct methods
.method constructor <init>(Lhug;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lhuh;->a:Lhug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lhuh;->a:Lhug;

    .line 1033
    iget-object v0, v0, Lhug;->c:Lhum;

    .line 43
    invoke-virtual {v0}, Lhum;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lhuh;->a:Lhug;

    .line 2033
    iget-object v0, v0, Lhug;->c:Lhum;

    .line 47
    iget-object v1, p0, Lhuh;->a:Lhug;

    .line 3033
    iget-object v1, v1, Lhug;->d:Lhtu;

    .line 48
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Lhum;->a(Lhtu;Lhty;)V

    .line 50
    :cond_0
    return-void
.end method
