.class public final Lapa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapg",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lapa;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 4

    .prologue
    .line 22
    check-cast p1, Landroid/net/Uri;

    .line 2032
    new-instance v0, Laph;

    new-instance v1, Lavf;

    invoke-direct {v1, p1}, Lavf;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lapc;

    iget-object v3, p0, Lapa;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lapc;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    .line 22
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Landroid/net/Uri;

    .line 1037
    invoke-static {p1}, Laal;->a(Landroid/net/Uri;)Z

    move-result v0

    .line 22
    return v0
.end method
