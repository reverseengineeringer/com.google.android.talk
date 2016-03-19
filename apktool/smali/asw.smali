.class public final Lasw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajb",
        "<",
        "Laik;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lamd;


# direct methods
.method public constructor <init>(Lamd;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lasw;->a:Lamd;

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 2

    .prologue
    .line 16
    check-cast p1, Laik;

    .line 1031
    invoke-virtual {p1}, Laik;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lasw;->a:Lamd;

    invoke-static {v0, v1}, Laqy;->a(Landroid/graphics/Bitmap;Lamd;)Laqy;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Laja;)Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
