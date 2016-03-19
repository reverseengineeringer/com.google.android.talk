.class final Liby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Libz;

.field final synthetic b:Libw;


# direct methods
.method constructor <init>(Libw;Libz;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Liby;->b:Libw;

    iput-object p2, p0, Liby;->a:Libz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Liby;->a:Libz;

    invoke-virtual {v0}, Libz;->b()V

    .line 1541
    const/4 v0, 0x0

    .line 537
    return-object v0
.end method
