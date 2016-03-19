.class public final Lhnu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Lhpa;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhoz;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lhou;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/StringBuilder;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lhof;

.field private k:Ljava/lang/String;

.field private m:Lhpa;

.field private n:Lhpa;

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/StringBuilder;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lhpa;

    invoke-direct {v0}, Lhpa;-><init>()V

    .line 67
    sput-object v0, Lhnu;->l:Lhpa;

    const-string v1, "NA"

    iput-object v1, v0, Lhpa;->s:Ljava/lang/String;

    .line 74
    const-string v0, "\\[([^\\[\\]])*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhnu;->o:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "\\d(?=[^,}][^,}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhnu;->p:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhnu;->q:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhnu;->r:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhnu;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lhnu;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lhnu;->c:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhnu;->f:Z

    .line 52
    iput-boolean v1, p0, Lhnu;->g:Z

    .line 56
    iput-boolean v1, p0, Lhnu;->h:Z

    .line 57
    iput-boolean v1, p0, Lhnu;->i:Z

    .line 58
    invoke-static {}, Lhof;->b()Lhof;

    move-result-object v0

    iput-object v0, p0, Lhnu;->j:Lhof;

    .line 103
    iput v1, p0, Lhnu;->t:I

    .line 106
    iput v1, p0, Lhnu;->u:I

    .line 109
    iput v1, p0, Lhnu;->v:I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    .line 114
    iput-boolean v1, p0, Lhnu;->x:Z

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lhnu;->y:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhnu;->A:Ljava/util/List;

    .line 122
    new-instance v0, Lhou;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lhou;-><init>(I)V

    iput-object v0, p0, Lhnu;->B:Lhou;

    .line 131
    iput-object p1, p0, Lhnu;->k:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lhnu;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhnu;->a(Ljava/lang/String;)Lhpa;

    move-result-object v0

    iput-object v0, p0, Lhnu;->n:Lhpa;

    .line 133
    iget-object v0, p0, Lhnu;->n:Lhpa;

    iput-object v0, p0, Lhnu;->m:Lhpa;

    .line 134
    return-void
.end method

.method private a(Ljava/lang/String;)Lhpa;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lhnu;->j:Lhof;

    invoke-virtual {v0, p1}, Lhof;->e(Ljava/lang/String;)I

    move-result v0

    .line 140
    iget-object v1, p0, Lhnu;->j:Lhof;

    invoke-virtual {v1, v0}, Lhof;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lhnu;->j:Lhof;

    invoke-virtual {v1, v0}, Lhof;->d(Ljava/lang/String;)Lhpa;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lhnu;->l:Lhpa;

    goto :goto_0
.end method

.method private a(CZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    if-eqz p2, :cond_0

    .line 320
    iget-object v2, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lhnu;->u:I

    .line 1423
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v0, :cond_4

    sget-object v2, Lhof;->b:Ljava/util/regex/Pattern;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v0

    .line 324
    :goto_0
    if-nez v2, :cond_5

    .line 325
    iput-boolean v1, p0, Lhnu;->f:Z

    .line 326
    iput-boolean v0, p0, Lhnu;->g:Z

    .line 330
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lhnu;->f:Z

    if-nez v2, :cond_c

    .line 334
    iget-boolean v2, p0, Lhnu;->g:Z

    if-eqz v2, :cond_7

    .line 335
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move v2, v1

    .line 1423
    goto :goto_0

    .line 1630
    :cond_5
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_6

    .line 1632
    iget-object v2, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1639
    :goto_3
    if-eqz p2, :cond_2

    .line 1640
    iget-object v2, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lhnu;->v:I

    goto :goto_1

    .line 1635
    :cond_6
    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 1636
    iget-object v2, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1637
    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 336
    :cond_7
    invoke-direct {p0}, Lhnu;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 337
    invoke-direct {p0}, Lhnu;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 338
    invoke-direct {p0}, Lhnu;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2410
    :cond_8
    iget-object v2, p0, Lhnu;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 2412
    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhnu;->y:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    iget-object v2, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhnu;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 2417
    iget-object v3, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2419
    :cond_9
    iget-object v2, p0, Lhnu;->y:Ljava/lang/String;

    invoke-direct {p0}, Lhnu;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 340
    :goto_4
    if-eqz v0, :cond_b

    .line 344
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0}, Lhnu;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    move v0, v1

    .line 2419
    goto :goto_4

    .line 347
    :cond_b
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 352
    :cond_c
    iget-object v2, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_5
    iget-boolean v0, p0, Lhnu;->i:Z

    if-eqz v0, :cond_f

    .line 366
    invoke-direct {p0}, Lhnu;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 367
    iput-boolean v1, p0, Lhnu;->i:Z

    .line 369
    :cond_d
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 356
    :pswitch_0
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lhnu;->i()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 359
    iput-boolean v0, p0, Lhnu;->i:Z

    goto :goto_5

    .line 361
    :cond_e
    invoke-direct {p0}, Lhnu;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnu;->y:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lhnu;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 371
    :cond_f
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 372
    invoke-direct {p0, p1}, Lhnu;->c(C)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-direct {p0}, Lhnu;->e()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 379
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhnu;->b(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lhnu;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 381
    invoke-direct {p0}, Lhnu;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 383
    :cond_10
    iget-boolean v0, p0, Lhnu;->f:Z

    if-eqz v0, :cond_11

    invoke-direct {p0, v1}, Lhnu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 387
    :cond_12
    invoke-direct {p0}, Lhnu;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    .line 203
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoz;

    .line 206
    iget-object v3, v0, Lhoz;->c:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, v0, Lhoz;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 212
    iget-object v4, p0, Lhnu;->B:Lhou;

    iget-object v0, v0, Lhoz;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method private c(C)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 648
    sget-object v0, Lhnu;->s:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 649
    iget v1, p0, Lhnu;->t:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    iput v0, p0, Lhnu;->t:I

    .line 653
    iget-object v0, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    iget v1, p0, Lhnu;->t:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    .line 655
    :cond_0
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 658
    iput-boolean v4, p0, Lhnu;->f:Z

    .line 660
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lhnu;->c:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 471
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 472
    iget-boolean v1, p0, Lhnu;->x:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_0

    .line 478
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 155
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoz;

    .line 157
    iget-object v5, v0, Lhoz;->a:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lhnu;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 175
    :goto_1
    return v0

    .line 1222
    :cond_0
    iget-object v1, v0, Lhoz;->a:Ljava/lang/String;

    .line 1226
    const/16 v6, 0x7c

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 1231
    sget-object v6, Lhnu;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v6, "\\\\d"

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    sget-object v6, Lhnu;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v6, "\\\\d"

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    iget-object v6, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1236
    iget-object v6, v0, Lhoz;->b:Ljava/lang/String;

    .line 1249
    const-string v7, "999999999999999"

    .line 1250
    iget-object v8, p0, Lhnu;->B:Lhou;

    invoke-virtual {v8, v1}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1251
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 1252
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 1255
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 1256
    const-string v1, ""

    .line 1237
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1238
    iget-object v6, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 161
    :goto_3
    if-eqz v1, :cond_3

    .line 162
    iput-object v5, p0, Lhnu;->c:Ljava/lang/String;

    .line 163
    sget-object v1, Lhnu;->r:Ljava/util/regex/Pattern;

    iget-object v0, v0, Lhoz;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lhnu;->x:Z

    .line 168
    iput v2, p0, Lhnu;->t:I

    move v0, v3

    .line 169
    goto :goto_1

    .line 1259
    :cond_1
    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    const-string v6, "9"

    const-string v7, "\u2008"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1241
    goto :goto_3

    .line 171
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 174
    :cond_4
    iput-boolean v2, p0, Lhnu;->f:Z

    move v0, v2

    .line 175
    goto/16 :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhnu;->f:Z

    .line 394
    iput-boolean v1, p0, Lhnu;->i:Z

    .line 395
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    iput v1, p0, Lhnu;->t:I

    .line 397
    iget-object v0, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lhnu;->c:Ljava/lang/String;

    .line 399
    invoke-direct {p0}, Lhnu;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoz;

    .line 434
    iget-object v2, p0, Lhnu;->B:Lhou;

    iget-object v3, v0, Lhoz;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    sget-object v1, Lhnu;->r:Ljava/util/regex/Pattern;

    iget-object v3, v0, Lhoz;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    iput-boolean v1, p0, Lhnu;->x:Z

    .line 439
    iget-object v0, v0, Lhoz;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-direct {p0, v0}, Lhnu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    .line 494
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3179
    iget-boolean v0, p0, Lhnu;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhnu;->n:Lhpa;

    iget-object v0, v0, Lhpa;->A:[Lhoz;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lhnu;->n:Lhpa;

    iget-object v0, v0, Lhpa;->A:[Lhoz;

    .line 3183
    :goto_0
    iget-object v1, p0, Lhnu;->n:Lhpa;

    iget-object v1, v1, Lhpa;->u:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 3184
    :goto_1
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 3185
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lhnu;->h:Z

    if-nez v6, :cond_0

    iget-boolean v6, v5, Lhoz;->e:Z

    if-nez v6, :cond_0

    iget-object v6, v5, Lhoz;->d:Ljava/lang/String;

    invoke-static {v6}, Lhof;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3189
    :cond_0
    iget-object v6, v5, Lhoz;->b:Ljava/lang/String;

    .line 3198
    sget-object v7, Lhnu;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 3189
    if-eqz v6, :cond_1

    .line 3190
    iget-object v6, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3184
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3179
    :cond_2
    iget-object v0, p0, Lhnu;->n:Lhpa;

    iget-object v0, v0, Lhpa;->z:[Lhoz;

    goto :goto_0

    :cond_3
    move v1, v2

    .line 3183
    goto :goto_1

    .line 3194
    :cond_4
    invoke-direct {p0, v3}, Lhnu;->b(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lhnu;->e()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 502
    :goto_3
    return-object v0

    .line 500
    :cond_5
    invoke-direct {p0}, Lhnu;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lhnu;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 502
    :cond_7
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhnu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 512
    if-lez v2, :cond_2

    .line 513
    const-string v1, ""

    .line 514
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 515
    iget-object v1, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lhnu;->c(C)Ljava/lang/String;

    move-result-object v1

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    iget-boolean v0, p0, Lhnu;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lhnu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :goto_1
    return-object v0

    .line 517
    :cond_1
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 519
    :cond_2
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private h()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3532
    iget-object v2, p0, Lhnu;->n:Lhpa;

    iget v2, v2, Lhpa;->r:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    move v2, v0

    .line 539
    :goto_0
    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    iput-boolean v0, p0, Lhnu;->h:Z

    .line 558
    :goto_1
    iget-object v2, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 559
    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 560
    return-object v2

    :cond_0
    move v2, v1

    .line 3532
    goto :goto_0

    .line 543
    :cond_1
    iget-object v2, p0, Lhnu;->n:Lhpa;

    iget-object v2, v2, Lhpa;->w:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    iget-object v2, p0, Lhnu;->B:Lhou;

    iget-object v3, p0, Lhnu;->n:Lhpa;

    iget-object v3, v3, Lhpa;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 546
    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_2

    .line 553
    iput-boolean v0, p0, Lhnu;->h:Z

    .line 554
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 555
    iget-object v2, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private i()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    iget-object v3, p0, Lhnu;->B:Lhou;

    const-string v0, "\\+|"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lhnu;->n:Lhpa;

    iget-object v0, v0, Lhpa;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 574
    iget-object v3, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    iput-boolean v1, p0, Lhnu;->h:Z

    .line 577
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 578
    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 579
    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v3, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    iget-object v3, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v0, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    .line 584
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 588
    :goto_1
    return v0

    .line 571
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 588
    goto :goto_1
.end method

.method private j()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    iget-object v2, p0, Lhnu;->j:Lhof;

    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1}, Lhof;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 604
    if-eqz v2, :cond_0

    .line 607
    iget-object v3, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 608
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v0, p0, Lhnu;->j:Lhof;

    invoke-virtual {v0, v2}, Lhof;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v1, "001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    iget-object v0, p0, Lhnu;->j:Lhof;

    invoke-virtual {v0, v2}, Lhof;->a(I)Lhpa;

    move-result-object v0

    iput-object v0, p0, Lhnu;->n:Lhpa;

    .line 615
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    const-string v0, ""

    iput-object v0, p0, Lhnu;->y:Ljava/lang/String;

    .line 620
    const/4 v0, 0x1

    goto :goto_0

    .line 612
    :cond_3
    iget-object v1, p0, Lhnu;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    invoke-direct {p0, v0}, Lhnu;->a(Ljava/lang/String;)Lhpa;

    move-result-object v0

    iput-object v0, p0, Lhnu;->n:Lhpa;

    goto :goto_1
.end method


# virtual methods
.method public a(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhnu;->a(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnu;->a:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lhnu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lhnu;->a:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lhnu;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    iget-object v0, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    iget-object v0, p0, Lhnu;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    iput v1, p0, Lhnu;->t:I

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lhnu;->c:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lhnu;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lhnu;->y:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lhnu;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhnu;->f:Z

    .line 279
    iput-boolean v1, p0, Lhnu;->g:Z

    .line 280
    iput v1, p0, Lhnu;->v:I

    .line 281
    iput v1, p0, Lhnu;->u:I

    .line 282
    iput-boolean v1, p0, Lhnu;->h:Z

    .line 283
    iput-boolean v1, p0, Lhnu;->i:Z

    .line 284
    iget-object v0, p0, Lhnu;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iput-boolean v1, p0, Lhnu;->x:Z

    .line 286
    iget-object v0, p0, Lhnu;->n:Lhpa;

    iget-object v1, p0, Lhnu;->m:Lhpa;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lhnu;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhnu;->a(Ljava/lang/String;)Lhpa;

    move-result-object v0

    iput-object v0, p0, Lhnu;->n:Lhpa;

    .line 289
    :cond_0
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-boolean v1, p0, Lhnu;->f:Z

    if-nez v1, :cond_1

    .line 452
    iget v0, p0, Lhnu;->u:I

    .line 462
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 455
    :goto_0
    iget v2, p0, Lhnu;->v:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lhnu;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 456
    iget-object v2, p0, Lhnu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lhnu;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 460
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lhnu;->a(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhnu;->a:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lhnu;->a:Ljava/lang/String;

    return-object v0
.end method
