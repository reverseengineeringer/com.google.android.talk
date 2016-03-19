.class public final Lejk;
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

    iget-object v1, p0, Lejk;->c:Linz;

    invoke-direct {v0, p0, v1}, Lijw;-><init>(Liiq;Liog;)V

    iput-object v0, p0, Lejk;->f:Lijw;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Leju;

    invoke-direct {v1}, Leju;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 28
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Leko;

    invoke-direct {v1}, Leko;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 29
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Lekk;

    invoke-direct {v1}, Lekk;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 30
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Lekp;

    invoke-direct {v1}, Lekp;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 31
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Lejl;

    invoke-direct {v1}, Lejl;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 32
    iget-object v0, p0, Lejk;->f:Lijw;

    new-instance v1, Leki;

    invoke-direct {v1}, Leki;-><init>()V

    invoke-virtual {v0, v1}, Lijw;->a(Lav;)V

    .line 33
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Liiq;->a(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lejk;->b:Lilh;

    const-class v1, Lika;

    iget-object v2, p0, Lejk;->f:Lijw;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method
