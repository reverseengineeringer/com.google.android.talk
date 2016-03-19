.class public final Lhat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapi",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lapo;)Lapg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lapo;",
            ")",
            "Lapg",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lhar;

    const-class v1, Lham;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p2, v1, v2}, Lapo;->a(Ljava/lang/Class;Ljava/lang/Class;)Lapg;

    move-result-object v1

    invoke-direct {v0, v1}, Lhar;-><init>(Lapg;)V

    return-object v0
.end method
