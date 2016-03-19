.class public abstract Laux;
.super Lauw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lauw;"
    }
.end annotation


# static fields
.field private static b:Z

.field private static d:Ljava/lang/Integer;


# instance fields
.field public final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:Lauy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Laux;->b:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Laux;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lauw;-><init>()V

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Laux;->a:Landroid/view/View;

    .line 53
    new-instance v0, Lauy;

    invoke-direct {v0, p1}, Lauy;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Laux;->e:Lauy;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lauh;)V
    .locals 2

    .prologue
    .line 1126
    sget-object v0, Laux;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1127
    const/4 v0, 0x1

    sput-boolean v0, Laux;->b:Z

    .line 1128
    iget-object v0, p0, Laux;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Laux;->a:Landroid/view/View;

    sget-object v1, Laux;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lauv;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Laux;->e:Lauy;

    invoke-virtual {v0, p1}, Lauy;->a(Lauv;)V

    .line 75
    return-void
.end method

.method public b()Lauh;
    .locals 2

    .prologue
    .line 1136
    sget-object v0, Laux;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Laux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 108
    :goto_0
    const/4 v1, 0x0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    instance-of v1, v0, Lauh;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Lauh;

    .line 117
    :goto_1
    return-object v0

    .line 1139
    :cond_0
    iget-object v0, p0, Laux;->a:Landroid/view/View;

    sget-object v1, Laux;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lauw;->d(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Laux;->e:Lauy;

    invoke-virtual {v0}, Lauy;->b()V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Laux;->a:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Target for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
