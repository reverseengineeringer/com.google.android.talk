.class public final Lekb;
.super Liiq;
.source "SourceFile"

# interfaces
.implements Lijx;


# instance fields
.field private final f:Lijw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Liiq;-><init>()V

    .line 16
    new-instance v0, Lijw;

    iget-object v1, p0, Lekb;->c:Linz;

    invoke-direct {v0, p0, v1}, Lijw;-><init>(Liiq;Liog;)V

    iput-object v0, p0, Lekb;->f:Lijw;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lekb;->f:Lijw;

    new-instance v1, Lekc;

    invoke-direct {v1}, Lekc;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 28
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Liiq;->a(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lekb;->b:Lilh;

    const-class v1, Lika;

    iget-object v2, p0, Lekb;->f:Lijw;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method
