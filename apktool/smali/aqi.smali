.class public final Laqi;
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
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laqi;-><init>(Lapd;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lapd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapd",
            "<",
            "Laot;",
            "Laot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Laqi;->a:Lapd;

    .line 29
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    check-cast p1, Laot;

    .line 1037
    iget-object v0, p0, Laqi;->a:Lapd;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Laqi;->a:Lapd;

    invoke-virtual {v0, p1, v1, v1}, Lapd;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laot;

    .line 1039
    if-nez v0, :cond_1

    .line 1040
    iget-object v0, p0, Laqi;->a:Lapd;

    invoke-virtual {v0, p1, v1, v1, p1}, Lapd;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1044
    :cond_0
    :goto_0
    new-instance v0, Laph;

    new-instance v1, Lajp;

    invoke-direct {v1, p1}, Lajp;-><init>(Laot;)V

    invoke-direct {v0, p1, v1}, Laph;-><init>(Laiw;Lajf;)V

    .line 20
    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
