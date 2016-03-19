.class final Laeq;
.super Laeo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laeo;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;B)V

    .line 51
    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Laeh;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Laeh;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Z)V

    return-object v0
.end method
