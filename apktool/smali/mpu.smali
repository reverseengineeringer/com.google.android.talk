.class final Lmpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lorg/chromium/net/UrlResponseInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lmpt;


# direct methods
.method constructor <init>(Lmpt;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lmpu;->c:Lmpt;

    iput-object p2, p0, Lmpu;->a:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lmpu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lmpu;->c:Lmpt;

    iget-object v0, v0, Lmpt;->a:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v1, p0, Lmpu;->c:Lmpt;

    iget-object v1, v1, Lmpt;->c:Lmpe;

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlRequest;)V

    .line 767
    return-void
.end method
