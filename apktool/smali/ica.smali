.class final Lica;
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
.field final synthetic a:Lihi;

.field final synthetic b:Libz;


# direct methods
.method constructor <init>(Libz;Lihi;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lica;->b:Libz;

    iput-object p2, p0, Lica;->a:Lihi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lica;->b:Libz;

    iget-object v0, v0, Libz;->a:Libw;

    .line 2054
    iget-object v0, v0, Libw;->e:Lihg;

    .line 1332
    iget-object v1, p0, Lica;->a:Lihi;

    invoke-interface {v0, v1}, Lihg;->a(Lihi;)V

    .line 1333
    iget-object v0, p0, Lica;->a:Lihi;

    .line 3054
    invoke-static {v0}, Libw;->a(Lihi;)Ljava/io/IOException;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_0

    .line 1335
    iget-object v1, p0, Lica;->b:Libz;

    invoke-virtual {v1, v0}, Libz;->a(Ljava/lang/Exception;)V

    .line 1337
    :cond_0
    const/4 v0, 0x0

    .line 329
    return-object v0
.end method
