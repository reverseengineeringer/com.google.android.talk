.class final Lhgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhge;


# direct methods
.method constructor <init>(Lhge;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lhgh;->a:Lhge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 1024
    iget-object v0, v0, Lhge;->f:Lhdr;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 2024
    iget-object v0, v0, Lhge;->f:Lhdr;

    .line 121
    invoke-interface {v0}, Lhdr;->c()V

    .line 124
    :cond_0
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 3024
    iget-object v0, v0, Lhge;->e:Landroid/view/Surface;

    .line 124
    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 4024
    iget-object v0, v0, Lhge;->e:Landroid/view/Surface;

    .line 125
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 128
    :cond_1
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 5024
    iget-object v0, v0, Lhge;->d:Landroid/graphics/SurfaceTexture;

    .line 128
    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 6024
    iget-object v0, v0, Lhge;->d:Landroid/graphics/SurfaceTexture;

    .line 129
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 132
    :cond_2
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 7024
    iget v0, v0, Lhge;->c:I

    .line 132
    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 8024
    iget v0, v0, Lhge;->c:I

    .line 133
    invoke-static {v0}, Laal;->s(I)V

    .line 134
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 9024
    const/4 v1, 0x0

    iput v1, v0, Lhge;->c:I

    .line 137
    :cond_3
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 10024
    iget-object v0, v0, Lhge;->b:Lhdu;

    .line 137
    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lhgh;->a:Lhge;

    .line 11024
    iget-object v0, v0, Lhge;->b:Lhdu;

    .line 138
    invoke-virtual {v0}, Lhdu;->a()V

    .line 140
    :cond_4
    return-void
.end method
