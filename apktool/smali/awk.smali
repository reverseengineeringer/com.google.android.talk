.class public final Lawk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lhnu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lawk;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawk;->a:Z

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    invoke-static {}, Lhof;->b()Lhof;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhof;->g(Ljava/lang/String;)Lhnu;

    move-result-object v0

    iput-object v0, p0, Lawk;->c:Lhnu;

    .line 59
    return-void
.end method

.method private a(CZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    if-eqz p2, :cond_0

    iget-object v0, p0, Lawk;->c:Lhnu;

    invoke-virtual {v0, p1}, Lhnu;->b(C)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lawk;->c:Lhnu;

    invoke-virtual {v0, p1}, Lhnu;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawk;->b:Z

    .line 162
    iget-object v0, p0, Lawk;->c:Lhnu;

    invoke-virtual {v0}, Lhnu;->a()V

    .line 163
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)Z
    .locals 2

    .prologue
    move v0, p1

    .line 166
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 167
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 168
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_1
    return v0

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_0
    invoke-static {}, Lhof;->b()Lhof;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhof;->g(Ljava/lang/String;)Lhnu;

    move-result-object v0

    iput-object v0, p0, Lawk;->c:Lhnu;

    .line 71
    iput-boolean v1, p0, Lawk;->a:Z

    .line 72
    iput-boolean v1, p0, Lawk;->b:Z

    .line 73
    return-void
.end method

.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lawk;->b:Z

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v3, p0, Lawk;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v3, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lawk;->a:Z

    if-nez v0, :cond_0

    .line 109
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1130
    add-int/lit8 v7, v0, -0x1

    .line 1131
    const/4 v2, 0x0

    .line 1132
    iget-object v0, p0, Lawk;->c:Lhnu;

    invoke-virtual {v0}, Lhnu;->a()V

    .line 1135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v4, v1

    move v0, v1

    move v5, v1

    .line 1136
    :goto_2
    if-ge v4, v8, :cond_5

    .line 1137
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1138
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1139
    if-eqz v5, :cond_3

    .line 1140
    invoke-direct {p0, v5, v0}, Lawk;->a(CZ)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :cond_3
    move v5, v6

    move-object v6, v2

    .line 1145
    :goto_3
    if-ne v4, v7, :cond_4

    move v0, v3

    .line 1136
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v6

    goto :goto_2

    .line 1149
    :cond_5
    if-eqz v5, :cond_7

    .line 1150
    invoke-direct {p0, v5, v0}, Lawk;->a(CZ)Ljava/lang/String;

    move-result-object v3

    .line 110
    :goto_4
    if-eqz v3, :cond_0

    .line 111
    iget-object v0, p0, Lawk;->c:Lhnu;

    invoke-virtual {v0}, Lhnu;->b()I

    move-result v6

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawk;->a:Z

    .line 113
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 119
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawk;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v3, v2

    goto :goto_4

    :cond_8
    move-object v6, v2

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lawk;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lawk;->b:Z

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-lez p3, :cond_0

    invoke-static {p1, p2, p3}, Lawk;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lawk;->a()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lawk;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lawk;->b:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-lez p4, :cond_0

    invoke-static {p1, p2, p4}, Lawk;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lawk;->a()V

    goto :goto_0
.end method
