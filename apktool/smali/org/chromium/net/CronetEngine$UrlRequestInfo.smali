.class public final Lorg/chromium/net/CronetEngine$UrlRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

.field private final d:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/CronetEngine$UrlRequestMetrics;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/CronetEngine$UrlRequestMetrics;",
            "Lorg/chromium/net/UrlResponseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$UrlRequestInfo;->a:Ljava/lang/String;

    .line 929
    iput-object p2, p0, Lorg/chromium/net/CronetEngine$UrlRequestInfo;->b:Ljava/util/Collection;

    .line 930
    iput-object p3, p0, Lorg/chromium/net/CronetEngine$UrlRequestInfo;->c:Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

    .line 931
    iput-object p4, p0, Lorg/chromium/net/CronetEngine$UrlRequestInfo;->d:Lorg/chromium/net/UrlResponseInfo;

    .line 932
    return-void
.end method
