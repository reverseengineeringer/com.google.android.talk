.class public final Lcwz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcya;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZILjava/lang/String;IJ)V
    .locals 7

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcwz;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcwz;->b:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcwz;->e:I

    .line 64
    iget v2, p0, Lcwz;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcwz;->c:Z

    .line 65
    iput p8, p0, Lcwz;->d:I

    .line 66
    iput-object p4, p0, Lcwz;->f:Ljava/lang/String;

    .line 67
    iput-wide p5, p0, Lcwz;->g:J

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcwz;->h:Ljava/util/List;

    .line 69
    const/4 v2, 0x0

    iput v2, p0, Lcwz;->i:I

    .line 70
    iput-boolean p7, p0, Lcwz;->j:Z

    .line 71
    move-object/from16 v0, p9

    iput-object v0, p0, Lcwz;->k:Ljava/lang/String;

    .line 72
    move/from16 v0, p10

    iput v0, p0, Lcwz;->l:I

    .line 73
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcwz;->m:J

    .line 74
    sget-boolean v2, Lcxt;->b:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcwz;->a:Ljava/lang/String;

    iget-object v3, p0, Lcwz;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Conversation Line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static a(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Leku;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcwz;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcya;

    iget-object v0, v0, Lcya;->p:Leku;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Leku;->b:Leku;

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    iget v1, p0, Lcwz;->l:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
