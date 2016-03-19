.class final Lipt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lipt;->a:Ljava/lang/StringBuilder;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lipt;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lipt;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lipt;->b:I

    .line 89
    iget v0, p0, Lipt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lipt;->a:Ljava/lang/StringBuilder;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lipt;->b:I

    if-gtz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release more StringBuilders than have been acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lipt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lipt;->a:Ljava/lang/StringBuilder;

    if-eq p1, v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to release wrong StringBuilder instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 107
    iget v0, p0, Lipt;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lipt;->b:I

    .line 108
    return-void
.end method
