.class final Llag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Llbb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llbb",
            "<+TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkzz;


# direct methods
.method constructor <init>(Lkzz;Llbb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    iput-object p1, p0, Llag;->b:Lkzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Llag;->a:Llbb;

    .line 276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Llag;->b:Lkzz;

    .line 1061
    iget-object v0, v0, Lkzz;->value:Ljava/lang/Object;

    .line 280
    if-eq v0, p0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Llag;->b:Lkzz;

    iget-object v1, p0, Llag;->a:Llbb;

    .line 2061
    invoke-virtual {v0, v1, p0}, Lkzz;->a(Llbb;Ljava/lang/Object;)Z

    goto :goto_0
.end method
