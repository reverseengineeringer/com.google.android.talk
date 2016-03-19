.class final Laq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Laq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lar;

    invoke-direct {v0}, Lar;-><init>()V

    sput-object v0, Laq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lan;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v1, v0

    move v0, v3

    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    iget-object v2, v1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 53
    :cond_0
    iget-object v1, v1, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    goto :goto_0

    .line 55
    :cond_1
    iget v1, p1, Lan;->e:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Laq;->a:[I

    .line 57
    iget-boolean v0, p1, Lan;->l:Z

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    iget-object v0, p1, Lan;->c:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v5, v0

    move v0, v3

    .line 63
    :goto_1
    if-eqz v5, :cond_6

    .line 64
    iget-object v1, p0, Laq;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    aput v4, v1, v0

    .line 65
    iget-object v1, p0, Laq;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    iget v0, v0, Lav;->p:I

    :goto_2
    aput v0, v1, v2

    .line 66
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    aput v2, v0, v4

    .line 67
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    aput v4, v0, v1

    .line 68
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    aput v4, v0, v2

    .line 69
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    aput v4, v0, v1

    .line 70
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 72
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    move v2, v3

    .line 73
    :goto_3
    if-ge v2, v6, :cond_4

    .line 74
    iget-object v7, p0, Laq;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    iget v0, v0, Lav;->p:I

    aput v0, v7, v1

    .line 73
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_3

    .line 65
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 79
    :goto_4
    iget-object v1, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->e:Lorg/chromium/net/CronetEngine$Builder$Pkp;

    move-object v5, v1

    goto :goto_1

    .line 77
    :cond_5
    iget-object v1, p0, Laq;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v1, v2

    goto :goto_4

    .line 81
    :cond_6
    iget v0, p1, Lan;->j:I

    iput v0, p0, Laq;->b:I

    .line 82
    iget v0, p1, Lan;->k:I

    iput v0, p0, Laq;->c:I

    .line 83
    iget-object v0, p1, Lan;->n:Ljava/lang/String;

    iput-object v0, p0, Laq;->d:Ljava/lang/String;

    .line 84
    iget v0, p1, Lan;->p:I

    iput v0, p0, Laq;->e:I

    .line 85
    iget v0, p1, Lan;->q:I

    iput v0, p0, Laq;->f:I

    .line 86
    iget-object v0, p1, Lan;->r:Ljava/lang/CharSequence;

    iput-object v0, p0, Laq;->g:Ljava/lang/CharSequence;

    .line 87
    iget v0, p1, Lan;->s:I

    iput v0, p0, Laq;->h:I

    .line 88
    iget-object v0, p1, Lan;->t:Ljava/lang/CharSequence;

    iput-object v0, p0, Laq;->i:Ljava/lang/CharSequence;

    .line 89
    iget-object v0, p1, Lan;->u:Ljava/util/ArrayList;

    iput-object v0, p0, Laq;->j:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p1, Lan;->v:Ljava/util/ArrayList;

    iput-object v0, p0, Laq;->k:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Laq;->a:[I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Laq;->b:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Laq;->c:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laq;->d:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Laq;->e:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Laq;->f:I

    .line 100
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Laq;->g:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Laq;->h:I

    .line 102
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Laq;->i:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laq;->j:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laq;->k:Ljava/util/ArrayList;

    .line 105
    return-void
.end method


# virtual methods
.method public a(Lbh;)Lan;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v6, Lan;

    invoke-direct {v6, p1}, Lan;-><init>(Lbh;)V

    move v1, v2

    move v0, v2

    .line 111
    :goto_0
    iget-object v3, p0, Laq;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 112
    new-instance v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    invoke-direct {v7}, Lorg/chromium/net/CronetEngine$Builder$Pkp;-><init>()V

    .line 113
    iget-object v3, p0, Laq;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    iput v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->g:I

    .line 114
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Instantiate "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " op #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " base fragment #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laq;->a:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    .line 117
    if-ltz v0, :cond_2

    .line 118
    iget-object v4, p1, Lbh;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 119
    iput-object v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    .line 123
    :goto_1
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->i:I

    .line 124
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->j:I

    .line 125
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->k:I

    .line 126
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->l:I

    .line 127
    iget-object v0, p0, Laq;->a:[I

    add-int/lit8 v3, v5, 0x1

    aget v8, v0, v5

    .line 128
    if-lez v8, :cond_3

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    move v4, v2

    .line 130
    :goto_2
    if-ge v4, v8, :cond_3

    .line 131
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Instantiate "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " set remove fragment #"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laq;->a:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    iget-object v0, p1, Lbh;->f:Ljava/util/ArrayList;

    iget-object v9, p0, Laq;->a:[I

    add-int/lit8 v5, v3, 0x1

    aget v3, v9, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav;

    .line 134
    iget-object v3, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v3, v5

    goto :goto_2

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v7, Lorg/chromium/net/CronetEngine$Builder$Pkp;->h:Lav;

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v6, v7}, Lan;->a(Lorg/chromium/net/CronetEngine$Builder$Pkp;)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    .line 139
    goto/16 :goto_0

    .line 140
    :cond_4
    iget v0, p0, Laq;->b:I

    iput v0, v6, Lan;->j:I

    .line 141
    iget v0, p0, Laq;->c:I

    iput v0, v6, Lan;->k:I

    .line 142
    iget-object v0, p0, Laq;->d:Ljava/lang/String;

    iput-object v0, v6, Lan;->n:Ljava/lang/String;

    .line 143
    iget v0, p0, Laq;->e:I

    iput v0, v6, Lan;->p:I

    .line 144
    iput-boolean v10, v6, Lan;->l:Z

    .line 145
    iget v0, p0, Laq;->f:I

    iput v0, v6, Lan;->q:I

    .line 146
    iget-object v0, p0, Laq;->g:Ljava/lang/CharSequence;

    iput-object v0, v6, Lan;->r:Ljava/lang/CharSequence;

    .line 147
    iget v0, p0, Laq;->h:I

    iput v0, v6, Lan;->s:I

    .line 148
    iget-object v0, p0, Laq;->i:Ljava/lang/CharSequence;

    iput-object v0, v6, Lan;->t:Ljava/lang/CharSequence;

    .line 149
    iget-object v0, p0, Laq;->j:Ljava/util/ArrayList;

    iput-object v0, v6, Lan;->u:Ljava/util/ArrayList;

    .line 150
    iget-object v0, p0, Laq;->k:Ljava/util/ArrayList;

    iput-object v0, v6, Lan;->v:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v6, v10}, Lan;->a(I)V

    .line 152
    return-object v6
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Laq;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    iget v0, p0, Laq;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Laq;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Laq;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Laq;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Laq;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Laq;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Laq;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Laq;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 169
    iget-object v0, p0, Laq;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Laq;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    return-void
.end method
