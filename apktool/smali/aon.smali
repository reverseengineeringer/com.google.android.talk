.class public final Laon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapg",
        "<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Laor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laor",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laor",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Laon;->a:Laor;

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 4

    .prologue
    .line 25
    check-cast p1, Ljava/io/File;

    .line 1037
    new-instance v0, Laph;

    new-instance v1, Lavf;

    invoke-direct {v1, p1}, Lavf;-><init>(Ljava/lang/Object;)V

    new-instance v2, Laoq;

    iget-object v3, p0, Laon;->a:Laor;

    invoke-direct {v2, p1, v3}, Laoq;-><init>(Ljava/io/File;Laor;)V

    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    .line 25
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
