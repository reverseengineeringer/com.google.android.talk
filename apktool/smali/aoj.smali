.class public final Laoj;
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
        "Ljava/lang/String;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Laok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laok",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laok;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laok",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laoj;->a:Laok;

    .line 35
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 4

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 2039
    new-instance v0, Laph;

    new-instance v1, Lavf;

    invoke-direct {v1, p1}, Lavf;-><init>(Ljava/lang/Object;)V

    new-instance v2, Laol;

    iget-object v3, p0, Laoj;->a:Laok;

    invoke-direct {v2, p1, v3}, Laol;-><init>(Ljava/lang/String;Laok;)V

    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    .line 27
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 1044
    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 27
    return v0
.end method
