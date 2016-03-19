.class public Lacj;
.super Lacg;
.source "SourceFile"


# instance fields
.field public g:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:F

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbg;Landroid/database/Cursor;FZ)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lacg;-><init>(Landroid/content/Context;Lbg;Landroid/database/Cursor;)V

    .line 36
    new-instance v0, Lif;

    sget-object v1, Lacq;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lif;-><init>(I)V

    iput-object v0, p0, Lacj;->g:Lif;

    .line 45
    iput p4, p0, Lacj;->h:F

    .line 46
    iput-boolean p5, p0, Lacj;->i:Z

    .line 47
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lacj;->g:Lif;

    invoke-virtual {v0, p2}, Lif;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lacj;->g:Lif;

    invoke-virtual {v0, p2}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;IZ)Lack;
    .locals 1

    .prologue
    .line 1146
    new-instance v0, Lack;

    invoke-direct {v0}, Lack;-><init>()V

    .line 1147
    invoke-static {p1, p2, p3, v0}, Lack;->a(Landroid/content/Intent;IZLack;)V

    .line 77
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lacj;->g:Lif;

    invoke-virtual {v1}, Lif;->clear()V

    .line 84
    if-eqz p1, :cond_2

    .line 85
    sget-object v2, Lacq;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 86
    iget-object v5, p0, Lacj;->g:Lif;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    sget-object v1, Lacq;->b:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 90
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 91
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 92
    iget-object v5, p0, Lacj;->g:Lif;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-super {p0, p1}, Lacg;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;I)Lav;
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lacj;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lacj;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0, p1}, Lacj;->d(Landroid/database/Cursor;)Z

    move-result v3

    .line 54
    const/4 v0, 0x0

    .line 55
    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 60
    :cond_0
    iget-object v3, p0, Lacj;->a:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lacj;->f()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/Class;)Labp;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v1}, Labp;->c(Ljava/lang/String;)Labp;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v2}, Labp;->d(Ljava/lang/String;)Labp;

    move-result-object v1

    iget-boolean v2, p0, Lacj;->i:Z

    .line 65
    invoke-virtual {v1, v2}, Labp;->a(Z)Labp;

    move-result-object v1

    iget v2, p0, Lacj;->h:F

    .line 66
    invoke-virtual {v1, v2}, Labp;->a(F)Labp;

    .line 68
    invoke-virtual {v3}, Labp;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lacj;->a(Landroid/content/Intent;IZ)Lack;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "contentUri"

    invoke-direct {p0, p1, v0}, Lacj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "thumbnailUri"

    invoke-direct {p0, p1, v0}, Lacj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 113
    const-string v0, "loadingIndicator"

    invoke-direct {p0, p1, v0}, Lacj;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lack;

    return-object v0
.end method
