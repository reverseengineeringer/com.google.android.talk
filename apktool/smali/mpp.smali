.class final Lmpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmpo;


# direct methods
.method constructor <init>(Lmpo;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lmpp;->a:Lmpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lmpp;->a:Lmpo;

    iget-object v0, v0, Lmpo;->b:Lmpe;

    .line 1035
    iget-object v0, v0, Lmpe;->a:Lmpt;

    .line 512
    iget-object v1, p0, Lmpp;->a:Lmpo;

    iget-object v1, v1, Lmpo;->b:Lmpe;

    .line 2035
    iget-object v1, v1, Lmpe;->n:Lorg/chromium/net/UrlResponseInfo;

    .line 512
    iget-object v2, p0, Lmpp;->a:Lmpo;

    iget-object v2, v2, Lmpo;->b:Lmpe;

    .line 3035
    iget-object v2, v2, Lmpe;->o:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1, v2}, Lmpt;->a(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    .line 514
    return-void
.end method
