.class public final Laqj;
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
        "Laot;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lapd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapd",
            "<",
            "Laot;",
            "Laot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lapd;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lapd;-><init>(I)V

    iput-object v0, p0, Laqj;->a:Lapd;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lapo;)Lapg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lapo;",
            ")",
            "Lapg",
            "<",
            "Laot;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Laqi;

    iget-object v1, p0, Laqj;->a:Lapd;

    invoke-direct {v0, v1}, Laqi;-><init>(Lapd;)V

    return-object v0
.end method
