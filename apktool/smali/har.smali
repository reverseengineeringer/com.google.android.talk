.class public final Lhar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapg",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapg",
            "<",
            "Lham;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lapg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapg",
            "<",
            "Lham;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lhar;->a:Lapg;

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 2

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Lhar;->a:Lapg;

    new-instance v1, Lham;

    invoke-direct {v1, p1}, Lham;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lapg;->a(Ljava/lang/Object;IILaja;)Laph;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    .line 1038
    invoke-static {p1}, Lidd;->a(Ljava/lang/String;)Z

    move-result v0

    .line 22
    return v0
.end method
