.class public final Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lgnl;


# instance fields
.field final a:Z

.field final b:Z

.field final c:Ljava/lang/String;

.field final d:Z

.field final e:Landroid/os/Bundle;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgnl;

    invoke-direct {v0}, Lgnl;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->CREATOR:Lgnl;

    return-void
.end method

.method public constructor <init>(IZZZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->f:I

    iput-boolean p2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->b:Z

    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->d:Z

    if-nez p6, :cond_0

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p6, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->e:Landroid/os/Bundle;

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->f:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Laal;->c(Ljava/lang/Object;)Lfmh;

    move-result-object v0

    const-string v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfmh;->a(Ljava/lang/String;Ljava/lang/Object;)Lfmh;

    move-result-object v0

    const-string v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfmh;->a(Ljava/lang/String;Ljava/lang/Object;)Lfmh;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfmh;->a(Ljava/lang/String;Ljava/lang/Object;)Lfmh;

    move-result-object v0

    invoke-virtual {v0}, Lfmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 2000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Laal;->p(Landroid/os/Parcel;I)I

    move-result v0

    .line 1000
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->a:Z

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    invoke-direct {p0}, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->b:Z

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->d:Z

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableGetOptions;->e:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 3000
    invoke-static {p1, v0}, Laal;->q(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
