.class public Lcve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcve;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbfd;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public a(Lbfd;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcve;->a:Lbfd;

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 20
    check-cast p1, Lcve;

    .line 1201
    invoke-virtual {p0}, Lcve;->e()I

    move-result v0

    invoke-virtual {p1}, Lcve;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1202
    const/4 v0, 0x1

    .line 1204
    :goto_0
    return v0

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcve;->e()I

    move-result v0

    invoke-virtual {p1}, Lcve;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1204
    const/4 v0, -0x1

    goto :goto_0

    .line 1206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Two navigation items cannot have the same sort index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcve;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->co:I

    return v0
.end method
