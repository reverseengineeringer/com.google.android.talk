.class public final Luh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmn;


# instance fields
.field a:I

.field final synthetic b:Lug;

.field private c:Z


# direct methods
.method protected constructor <init>(Lug;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Luh;->b:Lug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Luh;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lmd;I)Luh;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Luh;->b:Lug;

    iput-object p1, v0, Lug;->f:Lmd;

    .line 284
    iput p2, p0, Luh;->a:I

    .line 285
    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Luh;->b:Lug;

    invoke-static {v0}, Lug;->a(Lug;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Luh;->c:Z

    .line 292
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Luh;->c:Z

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Luh;->b:Lug;

    const/4 v1, 0x0

    iput-object v1, v0, Lug;->f:Lmd;

    .line 299
    iget-object v0, p0, Luh;->b:Lug;

    iget v1, p0, Luh;->a:I

    invoke-static {v0, v1}, Lug;->a(Lug;I)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Luh;->c:Z

    .line 305
    return-void
.end method
