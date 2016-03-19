.class final Lasu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lasr;


# direct methods
.method constructor <init>(Lasr;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lasu;->a:Lasr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lass;

    .line 236
    iget-object v2, p0, Lasu;->a:Lasr;

    invoke-virtual {v2, v0}, Lasr;->a(Lass;)V

    move v0, v1

    .line 242
    :goto_0
    return v0

    .line 238
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lass;

    .line 240
    iget-object v1, p0, Lasu;->a:Lasr;

    .line 1032
    iget-object v1, v1, Lasr;->a:Lahw;

    .line 240
    invoke-virtual {v1, v0}, Lahw;->a(Lauw;)V

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
