.class final Lary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laro;


# instance fields
.field private final a:Larv;

.field private final b:Lavl;


# direct methods
.method public constructor <init>(Larv;Lavl;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lary;->a:Larv;

    .line 82
    iput-object p2, p0, Lary;->b:Lavl;

    .line 83
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lary;->a:Larv;

    invoke-virtual {v0}, Larv;->a()V

    .line 91
    return-void
.end method

.method public a(Lamd;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lary;->b:Lavl;

    invoke-virtual {v0}, Lavl;->a()Ljava/io/IOException;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p1, p2}, Lamd;->a(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_0
    throw v0

    .line 106
    :cond_1
    return-void
.end method
