.class public final Ldtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldtt;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Ldtu;

    invoke-direct {v0}, Ldtu;-><init>()V

    sput-object v0, Ldtt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldtt;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Ldtt;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Ldtt;->c:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Ldtt;->d:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Ldtt;->e:Z

    .line 38
    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ldtt;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Ldtt;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Ldtt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ldtt;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Ldtt;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ldtt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)[Lkbj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ldtt;",
            ">;)[",
            "Lkbj;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtt;

    .line 1133
    iget-object v3, v0, Ldtt;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1134
    new-instance v3, Lkbj;

    invoke-direct {v3}, Lkbj;-><init>()V

    .line 1135
    new-instance v5, Lkbm;

    invoke-direct {v5}, Lkbm;-><init>()V

    iput-object v5, v3, Lkbj;->a:Lkbm;

    .line 1136
    iget-object v5, v3, Lkbj;->a:Lkbm;

    new-instance v6, Llcf;

    invoke-direct {v6}, Llcf;-><init>()V

    iput-object v6, v5, Lkbm;->a:Llcf;

    .line 1137
    iget-object v5, v3, Lkbj;->a:Lkbm;

    iget-object v5, v5, Lkbm;->a:Llcf;

    iget-object v0, v0, Ldtt;->d:Ljava/lang/String;

    iput-object v0, v5, Llcf;->a:Ljava/lang/String;

    .line 114
    :goto_1
    if-eqz v3, :cond_5

    .line 115
    if-nez v1, :cond_4

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v1, v0

    .line 120
    goto :goto_0

    .line 1141
    :cond_0
    iget-object v3, v0, Ldtt;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1142
    new-instance v3, Lkbj;

    invoke-direct {v3}, Lkbj;-><init>()V

    .line 1143
    new-instance v5, Lkbk;

    invoke-direct {v5}, Lkbk;-><init>()V

    iput-object v5, v3, Lkbj;->b:Lkbk;

    .line 1144
    iget-object v5, v3, Lkbj;->b:Lkbk;

    iget-object v0, v0, Ldtt;->c:Ljava/lang/String;

    iput-object v0, v5, Lkbk;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1148
    goto :goto_1

    .line 122
    :cond_2
    if-eqz v1, :cond_3

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lkbj;

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    :cond_3
    return-object v2

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Ldtt;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Ldtt;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ldtt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldtt;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldtt;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldtt;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldtt;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldtt;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldtt;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Ldtt;->a:Ljava/lang/String;

    iget-object v1, p0, Ldtt;->b:Ljava/lang/String;

    iget-object v2, p0, Ldtt;->c:Ljava/lang/String;

    iget-object v3, p0, Ldtt;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljzi;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljzi;

    invoke-direct {v0}, Ljzi;-><init>()V

    .line 154
    iget-object v1, p0, Ldtt;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Ldtt;->a:Ljava/lang/String;

    iput-object v1, v0, Ljzi;->a:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_0
    iget-boolean v1, p0, Ldtt;->e:Z

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljzi;->f:Ljava/lang/Boolean;

    .line 165
    :cond_1
    return-object v0

    .line 156
    :cond_2
    iget-object v1, p0, Ldtt;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Ldtt;->c:Ljava/lang/String;

    iput-object v1, v0, Ljzi;->c:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_3
    iget-object v1, p0, Ldtt;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Ldtt;->d:Ljava/lang/String;

    iput-object v1, v0, Ljzi;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    instance-of v2, p1, Ldtt;

    if-nez v2, :cond_2

    move v0, v1

    .line 76
    goto :goto_0

    .line 79
    :cond_2
    check-cast p1, Ldtt;

    .line 80
    iget-object v2, p0, Ldtt;->a:Ljava/lang/String;

    iget-object v3, p1, Ldtt;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldtt;->b:Ljava/lang/String;

    iget-object v3, p1, Ldtt;->b:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldtt;->c:Ljava/lang/String;

    iget-object v3, p1, Ldtt;->c:Ljava/lang/String;

    .line 82
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldtt;->d:Ljava/lang/String;

    iget-object v3, p1, Ldtt;->d:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Ldtt;->a:Ljava/lang/String;

    invoke-static {v0}, Ldtt;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldtt;->b:Ljava/lang/String;

    invoke-static {v1}, Ldtt;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldtt;->c:Ljava/lang/String;

    invoke-static {v1}, Ldtt;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldtt;->d:Ljava/lang/String;

    invoke-static {v1}, Ldtt;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 103
    iget-object v0, p0, Ldtt;->c:Ljava/lang/String;

    iget-object v1, p0, Ldtt;->d:Ljava/lang/String;

    iget-object v2, p0, Ldtt;->a:Ljava/lang/String;

    iget-object v3, p0, Ldtt;->b:Ljava/lang/String;

    iget-boolean v4, p0, Ldtt;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x56

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "EntityLookupSpec { email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  phoneNumber: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gaiaId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  chatId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createOffNetwork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ldtt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Ldtt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Ldtt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Ldtt;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Ldtt;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
