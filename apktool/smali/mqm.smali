.class final Lmqm;
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
    .line 268
    iput-object p1, p0, Lmqm;->c:Lmqk;

    iput p2, p0, Lmqm;->a:I

    iput p3, p0, Lmqm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lmqm;->c:Lmqk;

    iget-object v0, v0, Lmqk;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 1036
    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 271
    iget v1, p0, Lmqm;->a:I

    iget v2, p0, Lmqm;->b:I

    invoke-interface {v0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->a(II)V

    .line 272
    return-void
.end method
