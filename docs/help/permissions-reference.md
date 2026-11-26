# Roles & permissions reference

Permissions are granted per **resource** across the whole workspace. Each permission is independent — turning off *manage* doesn't turn off *view*. **Admin** always has every permission. Create custom roles in [Team & roles](../workspace/team-and-roles.md#custom-roles).

| Resource | Permission | Label in the app | Agent role |
|---|---|---|---|
| **Leads** | `leads.view` | View leads | :lucide-check: |
| | `leads.manage` | Manage leads (edit and delete) | |
| | `leads.change_status` | Change lead status (agents: only leads in their own conversations) | :lucide-check: |
| **Conversations** | `conversations.view` | View conversations | :lucide-check: |
| | `conversations.send_message` | Send messages in conversations | :lucide-check: |
| | `conversations.takeover` | Take over conversations from AI | :lucide-check: |
| | `conversations.release` | Release conversations back to AI | :lucide-check: |
| | `conversations.reassign` | Reassign conversations to another agent | |
| **Product Nurture** | `nurtures.view` | View nurtures, follow-ups & their analytics | :lucide-check: |
| | `nurtures.manage` | Create, edit, publish & manage nurtures and follow-ups | |
| **Channels** | `channels.view` | View channel health/status | |
| | `channels.manage` | Connect, configure & toggle channels | |
| **AI Configuration** | `ai_configs.view` | View AI model configurations | |
| | `ai_configs.manage` | Create & edit AI model configurations | |
| **Agents** | `agents.view` | View team agents list | |
| | `agents.manage` | Manage agent records | |
| **Reports & Analytics** | `reports.view` | View dashboards, live ops & reports | :lucide-check: |
| | `reports.manage` | Customize own dashboard | |
| **Integrations** | `integrations.view` | View integrations | |
| | `integrations.manage` | Connect & manage integrations (incl. Meta) | |
| **Workspace Settings** | `workspace_settings.view` | View workspace settings | |
| | `workspace_settings.manage` | Rename workspace, manage billing | |
| **Team & Roles** | `team_roles.view` | View team members & roles | |
| | `team_roles.manage` | Invite/remove members, create & assign roles | |
| **App Settings** | `app_settings.view` | View app settings (quiet hours, follow-up timing) | |
| | `app_settings.manage` | Change app settings (quiet hours, follow-up timing) | |

## Which pages each permission opens

| Sidebar page | Needs |
|---|---|
| Dashboard / My Dashboard | Always shown (content depends on `reports.view`) |
| Nurture Campaigns | `nurtures.view` |
| Conversations | `conversations.view` |
| Leads | `leads.view` |
| AI Models | `ai_configs.view` |
| Channels | `channels.view` |
| Human Agents | `agents.view` |
| Lead Sources | `integrations.view` |
| Team & Workspace | `workspace_settings.view` or `team_roles.view` |
| Settings | `app_settings.view` or `app_settings.manage` |
| Profile, Account Settings, Help & Support, Billing | Everyone |

Changes to a role apply live — members' menus update without logging out.
