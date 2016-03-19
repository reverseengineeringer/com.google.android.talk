.class final Lbs;
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
            "Lbs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Lav;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lbt;

    invoke-direct {v0}, Lbt;-><init>()V

    sput-object v0, Lbs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbs;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbs;->b:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lbs;->c:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbs;->d:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbs;->e:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbs;->f:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lbs;->g:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lbs;->h:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lbs;->i:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lbs;->j:Landroid/os/Bundle;

    .line 90
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    :cond_2
    move v1, v2

    .line 87
    goto :goto_2
.end method

.method public constructor <init>(Lav;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbs;->a:Ljava/lang/String;

    .line 69
    iget v0, p1, Lav;->p:I

    iput v0, p0, Lbs;->b:I

    .line 70
    iget-boolean v0, p1, Lav;->y:Z

    iput-boolean v0, p0, Lbs;->c:Z

    .line 71
    iget v0, p1, Lav;->G:I

    iput v0, p0, Lbs;->d:I

    .line 72
    iget v0, p1, Lav;->H:I

    iput v0, p0, Lbs;->e:I

    .line 73
    iget-object v0, p1, Lav;->I:Ljava/lang/String;

    iput-object v0, p0, Lbs;->f:Ljava/lang/String;

    .line 74
    iget-boolean v0, p1, Lav;->L:Z

    iput-boolean v0, p0, Lbs;->g:Z

    .line 75
    iget-boolean v0, p1, Lav;->K:Z

    iput-boolean v0, p0, Lbs;->h:Z

    .line 76
    iget-object v0, p1, Lav;->r:Landroid/os/Bundle;

    iput-object v0, p0, Lbs;->i:Landroid/os/Bundle;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lbf;Lav;)Lav;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lbs;->k:Lav;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lbs;->k:Lav;

    .line 121
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lbf;->i()Landroid/content/Context;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lbs;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lbs;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    :cond_1
    iget-object v1, p0, Lbs;->a:Ljava/lang/String;

    iget-object v2, p0, Lbs;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lav;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lav;

    move-result-object v1

    iput-object v1, p0, Lbs;->k:Lav;

    .line 104
    iget-object v1, p0, Lbs;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lbs;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    iget-object v0, p0, Lbs;->k:Lav;

    iget-object v1, p0, Lbs;->j:Landroid/os/Bundle;

    iput-object v1, v0, Lav;->n:Landroid/os/Bundle;

    .line 108
    :cond_2
    iget-object v0, p0, Lbs;->k:Lav;

    iget v1, p0, Lbs;->b:I

    invoke-virtual {v0, v1, p2}, Lav;->a(ILav;)V

    .line 109
    iget-object v0, p0, Lbs;->k:Lav;

    iget-boolean v1, p0, Lbs;->c:Z

    iput-boolean v1, v0, Lav;->y:Z

    .line 110
    iget-object v0, p0, Lbs;->k:Lav;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lav;->A:Z

    .line 111
    iget-object v0, p0, Lbs;->k:Lav;

    iget v1, p0, Lbs;->d:I

    iput v1, v0, Lav;->G:I

    .line 112
    iget-object v0, p0, Lbs;->k:Lav;

    iget v1, p0, Lbs;->e:I

    iput v1, v0, Lav;->H:I

    .line 113
    iget-object v0, p0, Lbs;->k:Lav;

    iget-object v1, p0, Lbs;->f:Ljava/lang/String;

    iput-object v1, v0, Lav;->I:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lbs;->k:Lav;

    iget-boolean v1, p0, Lbs;->g:Z

    iput-boolean v1, v0, Lav;->L:Z

    .line 115
    iget-object v0, p0, Lbs;->k:Lav;

    iget-boolean v1, p0, Lbs;->h:Z

    iput-boolean v1, v0, Lav;->K:Z

    .line 116
    iget-object v0, p0, Lbs;->k:Lav;

    iget-object v1, p1, Lbf;->d:Lbh;

    iput-object v1, v0, Lav;->C:Lbh;

    .line 118
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiated fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbs;->k:Lav;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    :cond_3
    iget-object v0, p0, Lbs;->k:Lav;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lbs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lbs;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Lbs;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lbs;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lbs;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lbs;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lbs;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Lbs;->h:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lbs;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lbs;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    goto :goto_1

    :cond_2
    move v1, v2

    .line 136
    goto :goto_2
.end method
