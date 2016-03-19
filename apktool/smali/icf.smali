.class public final Licf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbg;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p1}, Lice;->a(Lbg;)V

    .line 21
    return-void
.end method

.method public a(Lbg;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p1}, Lice;->b(Lbg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {p1, p2, p3}, Lice;->a(Lbg;Ljava/lang/String;Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public b(Lbg;)V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Licf;->a(Lbg;)V

    .line 1025
    new-instance v0, Licg;

    invoke-direct {v0}, Licg;-><init>()V

    .line 1026
    const-string v1, "connection_error"

    invoke-virtual {v0, p1, v1}, Licg;->a(Lbg;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public c(Lbg;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Licf;->a(Lbg;)V

    .line 2025
    new-instance v0, Licd;

    invoke-direct {v0}, Licd;-><init>()V

    .line 2026
    const-string v1, "irrecoverable_error"

    invoke-virtual {v0, p1, v1}, Licd;->a(Lbg;Ljava/lang/String;)V

    .line 33
    return-void
.end method
