.class final Lbnf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lbld;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/widget/ListView;

.field private final d:I

.field private final e:Lhba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Leme;

    invoke-static {v0}, Lksf;->a(Ljava/lang/Object;)Lksf;

    move-result-object v0

    sput-object v0, Lbnf;->a:Lksf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lbnf;->b:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lbnf;->c:Landroid/widget/ListView;

    .line 73
    iput p3, p0, Lbnf;->d:I

    .line 74
    const-class v0, Lhba;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Lbnf;->e:Lhba;

    .line 75
    return-void
.end method

.method private static a([Landroid/text/style/URLSpan;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 218
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 219
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-object v1
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lbnf;->a:Lksf;

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 63
    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuInflater;Lemf;)V
    .locals 9

    .prologue
    .line 83
    iget-object v0, p0, Lbnf;->c:Landroid/widget/ListView;

    if-ne p2, v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_f

    move-object v0, p3

    .line 89
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 90
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    .line 92
    if-eqz v0, :cond_f

    .line 93
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;

    if-eqz v5, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    if-eqz v5, :cond_f

    .line 98
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->r()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 105
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->s()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 107
    const/4 v2, 0x1

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->d()Z

    move-result v4

    .line 110
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->q()I

    move-result v3

    .line 111
    iget-object v5, p0, Lbnf;->e:Lhba;

    iget v6, p0, Lbnf;->d:I

    .line 112
    invoke-interface {v5, v6}, Lhba;->a(I)Lhaw;

    move-result-object v5

    const/16 v6, 0xb78

    .line 113
    invoke-interface {v5, v6}, Lhaw;->a(I)Lhax;

    move-result-object v5

    .line 114
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->C()Lemc;

    move-result-object v0

    invoke-virtual {v0}, Lemc;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lhax;->d()V

    move v0, v3

    move v3, v1

    move v1, v4

    .line 120
    :goto_2
    sget v4, Laal;->hd:I

    invoke-virtual {p4, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    if-eqz p5, :cond_3

    .line 123
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    sget v7, Lcom/google/android/apps/hangouts/hangout/StressMode;->fF:I

    invoke-interface {p1, v4, v5, v6, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 130
    :cond_3
    if-nez v3, :cond_6

    .line 133
    if-eqz v2, :cond_4

    if-lez v0, :cond_5

    .line 134
    :cond_4
    sget v0, Laen;->co:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 135
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    :cond_5
    if-eqz v1, :cond_6

    .line 140
    sget v0, Laen;->bz:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    :cond_6
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_c

    .line 146
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 147
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    .line 149
    if-eqz v0, :cond_c

    .line 150
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    if-eqz v1, :cond_c

    .line 152
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    sget v1, Laen;->bq:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 155
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const/16 v1, 0x3e8

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->p()Z

    move-result v1

    if-nez v1, :cond_9

    .line 164
    sget v1, Laen;->fQ:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 165
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1179
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->f()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1183
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1184
    const/4 v0, 0x7

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v0, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lbnf;->a([Landroid/text/style/URLSpan;)Ljava/util/Set;

    move-result-object v0

    .line 1187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1188
    const/4 v1, 0x0

    .line 1189
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1190
    if-ltz v2, :cond_e

    .line 1191
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1192
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1195
    :goto_4
    const/4 v2, 0x0

    .line 1196
    const-string v4, "mailto"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1197
    const/4 v0, 0x1

    move-object v2, v1

    .line 1202
    :goto_5
    if-eqz v0, :cond_a

    .line 1204
    invoke-static {v1}, Laal;->p(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1206
    iget-object v1, p0, Lbnf;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->fg:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 1207
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1208
    const/4 v2, 0x0

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {p1, v2, v4, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 1209
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 1210
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 102
    :pswitch_0
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1198
    :cond_b
    const-string v4, "tel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1199
    const/4 v0, 0x1

    .line 1200
    invoke-static {v1}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 174
    :cond_c
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fl:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    move-object v2, v1

    goto :goto_5

    :cond_e
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :cond_f
    move v0, v3

    move v3, v1

    move v1, v4

    goto/16 :goto_2

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
