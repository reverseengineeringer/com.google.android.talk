.class public final Lfco;
.super Lbr;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbg;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lbr;-><init>(Lbg;)V

    .line 119
    iput-object p2, p0, Lfco;->c:Landroid/content/Context;

    .line 120
    iput-object p4, p0, Lfco;->d:Ljava/util/List;

    .line 121
    iput p3, p0, Lfco;->a:I

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lfco;->b:I

    .line 123
    return-void
.end method


# virtual methods
.method public a(Lfcn;)I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 145
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfcn;

    .line 146
    iget-object v0, v0, Lfcn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 151
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Lav;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lfco;->d(I)Lfcn;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lfco;->c:Landroid/content/Context;

    iget-object v0, v0, Lfcn;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lav;->instantiate(Landroid/content/Context;Ljava/lang/String;)Lav;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfcn;

    .line 127
    iget-object v0, v0, Lfcn;->e:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lfco;->a:I

    iget v1, p0, Lfco;->b:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public c(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lfco;->d(I)Lfcn;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lfco;->c:Landroid/content/Context;

    iget v0, v0, Lfcn;->a:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lfcn;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lfco;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfcn;

    return-object v0
.end method
