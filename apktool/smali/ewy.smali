.class public final Lewy;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public a:Landroid/content/Intent;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lewy;->a:Landroid/content/Intent;

    .line 70
    iput p1, p0, Lewy;->b:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 59
    iput-object p1, p0, Lewy;->a:Landroid/content/Intent;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lewy;->b:I

    .line 62
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lewy;->b:I

    .line 83
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lewy;->b:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 79
    return-void
.end method
