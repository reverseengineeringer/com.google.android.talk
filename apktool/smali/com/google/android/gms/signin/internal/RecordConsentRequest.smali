.class public Lcom/google/android/gms/signin/internal/RecordConsentRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/RecordConsentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:Landroid/accounts/Account;

.field private final c:[Lcom/google/android/gms/common/api/Scope;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgqq;

    invoke-direct {v0}, Lgqq;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->c:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public b()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->c:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    iget v2, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->a:I

    invoke-static {p1, v1, v2}, Laal;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->a()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Laal;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->b()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Laal;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 3000
    invoke-static {p1, v0}, Laal;->q(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
