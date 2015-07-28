.class public Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemInfo"
.end annotation


# instance fields
.field public mAccountId:J

.field public mContactId:J

.field public mOpenAudioChat:Z

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>(Ljava/lang/String;JZ)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "audioChat"    # Z

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 148
    iput-boolean p4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mOpenAudioChat:Z

    .line 149
    return-void
.end method
