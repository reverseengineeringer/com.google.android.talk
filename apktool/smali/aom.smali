.class public final Laom;
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


# instance fields
.field private final a:Laok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laok",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Laok;

    invoke-direct {v0, p0}, Laok;-><init>(Laom;)V

    iput-object v0, p0, Laom;->a:Laok;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lapo;)Lapg;
    .locals 2
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
    .line 153
    new-instance v0, Laoj;

    iget-object v1, p0, Laom;->a:Laok;

    invoke-direct {v0, v1}, Laoj;-><init>(Laok;)V

    return-object v0
.end method
