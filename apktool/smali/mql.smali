.class final Lmql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lmqk;


# direct methods
.method constructor <init>(Lmqk;II)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lmql;->c:Lmqk;

    iput p2, p0, Lmql;->a:I

    iput p3, p0, Lmql;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lmql;->c:Lmqk;

    iget-object v0, v0, Lmqk;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 1036
    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 255
    iget v1, p0, Lmql;->a:I

    iget v2, p0, Lmql;->b:I

    invoke-interface {v0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->a(II)V

    .line 256
    return-void
.end method
