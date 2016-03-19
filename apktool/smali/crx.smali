.class public Lcrx;
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
            "Lcrx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/maps/model/LatLng;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    sput-object v0, Lcrx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrx;->a:Ljava/lang/String;

    .line 208
    const-class v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcrx;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrx;->c:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrx;->d:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcrx;->a:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcrx;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 216
    iput-object p3, p0, Lcrx;->c:Ljava/lang/CharSequence;

    .line 217
    iput-object p4, p0, Lcrx;->d:Ljava/lang/CharSequence;

    .line 218
    return-void
.end method

.method public static a(Lgeo;)Lcrx;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcrx;

    .line 85
    invoke-interface {p0}, Lgeo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-interface {p0}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p0}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcrx;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public a()Lgeo;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcrz;

    invoke-direct {v0, p0}, Lcrz;-><init>(Lcrx;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcrx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcrx;->b:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Lcrx;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcrx;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return-void
.end method
